use [master]
go

print char(13) + '1. Start Query OnlinePortal_Database Execution'
set nocount on

print char(13) + '2. Variable Declaration'
declare @DataPath varchar(500),
		@LogPath varchar(500),
		@databaseName varchar(20)

declare	@DirTree table(subdirectory varchar(255), depth int) 

print char(13) + '3. Initialize Variables'
set @databaseName = 'LearnerPortal'
set @DataPath = 'C:\DB_Instance\Database\'
set	@LogPath = @DataPath

print char(13) + '4. Excute @DirTree Values'
insert into @DirTree(subdirectory, depth)
	exec master.sys.xp_dirtree @DataPath

print char(13) + '5. Create The @DataPath Directory'
if not exists(select 1 from @DirTree where subdirectory = @databaseName)
	begin
		exec master.dbo.xp_create_subdir @DataPath
	end

print char(13) + '6. Remove All Records From @DirTree'
delete from @DirTree

print char(13) + '7. Execute @LogPath Values'
insert into @DirTree(subdirectory, depth)
	exec master.sys.xp_dirtree @LogPath

print char(13) + '8. Create The @LogPath Directory'
if not exists(select 1 from @DirTree where subdirectory = @databaseName)
	exec master.dbo.xp_create_subdir @LogPath

set nocount off
go

print char(13) + '9. Check If DB Exists And Drop It'
if exists (select * from sys.databases where name = 'LearnerPortal')
	drop database [LearnerPortal]
go

declare @databaseName varchar(20)
set @databaseName = 'LearnerPortal'

print char(13) + '10. Create Database ' + @databaseName
create database [LearnerPortal]
	containment = none
on primary
(name = N'LearnerPortal_Data', filename = N'C:\DB_Instance\Database\LearnerPortal.mdf', size = 1gb, maxsize = unlimited, filegrowth = 10240kb)
 log on
(name = N'LearnerPortal_Log', filename = N'C:\DB_Instance\Database\LearnerPortal_log.ldf', size = 1gb, maxsize = 2048gb, filegrowth = 10240kb)
go

print char(13) + '11. Set Compatibility Level To [100] '
alter database [LearnerPortal] set compatibility_level = 100
go

print char(13) + '12. Enable Full Text Installed'
if (1 = fulltextserviceproperty('IsFullTextInstalled'))
	begin
		exec [LearnerPortal].[dbo].[sp_fulltext_database]  @action = 'enable'
	end
go

print char(13) + '13. Set ANSI_NULL_DEFAULT On'
alter database [LearnerPortal] set ansi_null_default on
go

print char(13) + '14. Set ANSI_NULLS On'
alter database [LearnerPortal] set ansi_nulls on
go

print char(13) + '15. Set ANSI_PADDING On'
alter database [LearnerPortal] set ansi_padding on
go

print char(13) + '16. Set ANSI_WARNINGS On'
alter database [LearnerPortal] set ansi_warnings on
go

print char(13) + '17. Set ARITHABORT On'
alter database [LearnerPortal] set arithabort on
go

print char(13) + '18. Set AUTO_CLOSE Off'
alter database [LearnerPortal] set auto_close off
go

print char(13) + '19. Set AUTO_CREATE_STATISTICS On'
alter database [LearnerPortal] set auto_create_statistics on
go

print char(13) + '20. Set AUTO_SHRINK Off'
alter database [LearnerPortal] set auto_shrink off
go

print char(13) + '21. Set AUTO_UPDATE_STATISTICS On'
alter database [LearnerPortal] set auto_update_statistics on
go

print char(13) + '22. Set CURSOR_CLOSE_ON_COMMIT Off'
alter database [LearnerPortal] set cursor_close_on_commit off
go

print char(13) + '23. Set CURSOR_DEFAULT To Local'
alter database [LearnerPortal] set cursor_default local
go

print char(13) + '24. Set CONCAT_NULL_YIELDS_NULL On'
alter database [LearnerPortal] set concat_null_yields_null on
go

print char(13) + '25. Set NUMERIC_ROUNDABORT off'
alter database [LearnerPortal] set numeric_roundabort off
go

print char(13) + '26. Set QUOTED_IDENTIFIER on'
alter database [LearnerPortal] set quoted_identifier on
go

print char(13) + '27. Set RECURSIVE_TRIGGERS off'
alter database [LearnerPortal] set recursive_triggers off
go

print char(13) + '28. Set AUTO_UPDATE_STATISTICS_ASYNC off'
alter database [LearnerPortal] set auto_update_statistics_async off
go

print char(13) + '29. Set DATE_CORRELATION_OPTIMIZATION off'
alter database [LearnerPortal] set date_correlation_optimization off
go

print char(13) + '30. Set TRUSTWORTHY On'
alter database [LearnerPortal] set trustworthy on
go

print char(13) + '31. Set ALLOW_SNAPSHOT_ISOLATION off'
alter database [LearnerPortal] set allow_snapshot_isolation off
go

print char(13) + '32. Set PARAMETERIZATION To Simple'
alter database [LearnerPortal] set parameterization simple
go

print char(13) + '33. Set READ_COMMITTED_SNAPSHOT Off'
alter database [LearnerPortal] set read_committed_snapshot off
go

print char(13) + '34. Set RECOVERY To Simple'
alter database [LearnerPortal] set recovery simple
go

print char(13) + '35. Set MULTI_USER'
alter database [LearnerPortal] set multi_user
go

print char(13) + '36. Set DB_CHAINING Off'
alter database [LearnerPortal] set db_chaining off
go

print char(13) + '37. Set FILESTREAM | NON_TRANSACTED_ACCESS Off'
alter database [LearnerPortal] set filestream(non_transacted_access = off)
go

print char(13) + '38. Set TARGET_RECOVERY_TIME To 0 Seconds'
alter database [LearnerPortal] set target_recovery_time = 0 seconds
go

print char(13) + '39. Set READ_WRITE'
alter database [LearnerPortal] set read_write
go

print char(13) + '40. End Query OnlinePortal_Database Executed Successfully'