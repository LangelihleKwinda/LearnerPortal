use [LearnerPortal]
go

print char(13) + '1. Start Query CreateSystemStoredProcedures Execution'

print char(13) + '2. Create Encryption Password Stored Procedure'
if (object_id('Proc_Encription_PW') is not null)
	drop procedure Proc_Encription_PW
go

create procedure dbo.Proc_Encription_PW @str varchar(4000), @output varbinary(4000) output
	as
		begin
			set @output = encryptbypassphrase('KEY', @str)
			select @output
		end
go 

print char(13) + '3. Create Decryption Password Stored Procedure'
if (object_id('Proc_Decription_PW') is not null)
	drop procedure Proc_Decription_PW
go

create procedure dbo.Proc_Decription_PW @encryp varbinary(8000), @output varchar(8000) output
	as
		begin
			set @output = decryptbypassphrase('KEY',@encryp)
			select @output
		end
go

print char(13) + '4. Create Auditing_Logs_Insert Stored Procedure'
if (object_id('Proc_Auditing_Logs_Insert') is not null)
	drop procedure Proc_Auditing_Logs_Insert
go

create procedure dbo.Proc_Auditing_Logs_Insert @username varchar(50), @table varchar(50), @beforeValue varchar(max), @afterValue varchar(max)
	as
		begin
			begin transaction
				insert into Auditing_Logs values (@username, @table, @beforeValue, @afterValue, getdate())
				declare @NewSeqValue int = scope_identity() 

				if @@error = 0
					commit transaction
				else
					begin
						rollback transaction
						set @NewSeqValue = 0
					end
			return @NewSeqValue
		end
go 

print char(13) + '5. Create Login Stored Procedure'
if (object_id('Proc_Login') is not null)
	drop procedure Proc_Login
go

create procedure dbo.Proc_Login @username varchar(100), @password varchar(100)
	as
		begin
			declare @dbPassword varchar(20),
					@dbPasswordVarbinary varbinary(max),
					@return int;

			if exists(select count(*) from Users where Username = @username)
				begin
					select @dbPasswordVarbinary = [Password] from Users where Username = @username
					exec Proc_Decription_PW @dbPasswordVarbinary, @dbPassword output

					if (@dbPassword = @password)
						set @return = 1
					else
						set @return = 0		 
				end
			return @return
		end
go

print char(13) + '6. End Query CreateSystemStoredProcedures Executed Successfully'