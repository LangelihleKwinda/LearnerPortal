namespace eLearning
{
    partial class frmServerConfig
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label lblUsername;
            System.Windows.Forms.Label lblServerIP;
            System.Windows.Forms.Label lblDatabaseName;
            System.Windows.Forms.Label lblPasswrod;
            this.btnLogin = new System.Windows.Forms.Button();
            this.cmbServer = new System.Windows.Forms.ComboBox();
            this.txtUsername = new System.Windows.Forms.TextBox();
            this.txtDatabaseName = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.btnConnect = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.CNetHelpProvider = new System.Windows.Forms.HelpProvider();
            this.lblMessage = new System.Windows.Forms.Label();
            lblUsername = new System.Windows.Forms.Label();
            lblServerIP = new System.Windows.Forms.Label();
            lblDatabaseName = new System.Windows.Forms.Label();
            lblPasswrod = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblUsername
            // 
            lblUsername.AutoSize = true;
            lblUsername.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(lblUsername, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_lblUsername");
            this.CNetHelpProvider.SetHelpNavigator(lblUsername, System.Windows.Forms.HelpNavigator.Topic);
            lblUsername.Location = new System.Drawing.Point(26, 89);
            lblUsername.Name = "lblUsername";
            this.CNetHelpProvider.SetShowHelp(lblUsername, true);
            lblUsername.Size = new System.Drawing.Size(77, 15);
            lblUsername.TabIndex = 113;
            lblUsername.Text = "Username:";
            // 
            // lblServerIP
            // 
            lblServerIP.AutoSize = true;
            lblServerIP.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(lblServerIP, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_lblServerIP");
            this.CNetHelpProvider.SetHelpNavigator(lblServerIP, System.Windows.Forms.HelpNavigator.Topic);
            lblServerIP.Location = new System.Drawing.Point(26, 37);
            lblServerIP.Name = "lblServerIP";
            this.CNetHelpProvider.SetShowHelp(lblServerIP, true);
            lblServerIP.Size = new System.Drawing.Size(124, 15);
            lblServerIP.TabIndex = 110;
            lblServerIP.Text = "Server IP Address:";
            // 
            // lblDatabaseName
            // 
            lblDatabaseName.AutoSize = true;
            lblDatabaseName.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(lblDatabaseName, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_lblDatabaseName" +
        "");
            this.CNetHelpProvider.SetHelpNavigator(lblDatabaseName, System.Windows.Forms.HelpNavigator.Topic);
            lblDatabaseName.Location = new System.Drawing.Point(26, 63);
            lblDatabaseName.Name = "lblDatabaseName";
            this.CNetHelpProvider.SetShowHelp(lblDatabaseName, true);
            lblDatabaseName.Size = new System.Drawing.Size(114, 15);
            lblDatabaseName.TabIndex = 111;
            lblDatabaseName.Text = "Database Name:";
            // 
            // lblPasswrod
            // 
            lblPasswrod.AutoSize = true;
            lblPasswrod.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(lblPasswrod, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_lblPasswrod");
            this.CNetHelpProvider.SetHelpNavigator(lblPasswrod, System.Windows.Forms.HelpNavigator.Topic);
            lblPasswrod.Location = new System.Drawing.Point(26, 115);
            lblPasswrod.Name = "lblPasswrod";
            this.CNetHelpProvider.SetShowHelp(lblPasswrod, true);
            lblPasswrod.Size = new System.Drawing.Size(75, 15);
            lblPasswrod.TabIndex = 112;
            lblPasswrod.Text = "Password:";
            // 
            // btnLogin
            // 
            this.CNetHelpProvider.SetHelpKeyword(this.btnLogin, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_btnNext");
            this.CNetHelpProvider.SetHelpNavigator(this.btnLogin, System.Windows.Forms.HelpNavigator.Topic);
            this.btnLogin.Location = new System.Drawing.Point(295, 150);
            this.btnLogin.Name = "btnLogin";
            this.CNetHelpProvider.SetShowHelp(this.btnLogin, true);
            this.btnLogin.Size = new System.Drawing.Size(75, 23);
            this.btnLogin.TabIndex = 6;
            this.btnLogin.Text = "Login >>";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // cmbServer
            // 
            this.cmbServer.BackColor = System.Drawing.Color.Silver;
            this.cmbServer.Font = new System.Drawing.Font("Rockwell", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbServer.ForeColor = System.Drawing.Color.Red;
            this.cmbServer.FormattingEnabled = true;
            this.CNetHelpProvider.SetHelpKeyword(this.cmbServer, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_cmbServer");
            this.CNetHelpProvider.SetHelpNavigator(this.cmbServer, System.Windows.Forms.HelpNavigator.Topic);
            this.cmbServer.Location = new System.Drawing.Point(157, 35);
            this.cmbServer.MaxLength = 20;
            this.cmbServer.Name = "cmbServer";
            this.CNetHelpProvider.SetShowHelp(this.cmbServer, true);
            this.cmbServer.Size = new System.Drawing.Size(213, 22);
            this.cmbServer.TabIndex = 1;
            // 
            // txtUsername
            // 
            this.txtUsername.BackColor = System.Drawing.Color.Silver;
            this.txtUsername.Font = new System.Drawing.Font("Rockwell", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(this.txtUsername, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_txtUsername");
            this.CNetHelpProvider.SetHelpNavigator(this.txtUsername, System.Windows.Forms.HelpNavigator.Topic);
            this.txtUsername.Location = new System.Drawing.Point(157, 86);
            this.txtUsername.MaxLength = 50;
            this.txtUsername.Name = "txtUsername";
            this.CNetHelpProvider.SetShowHelp(this.txtUsername, true);
            this.txtUsername.Size = new System.Drawing.Size(213, 22);
            this.txtUsername.TabIndex = 3;
            // 
            // txtDatabaseName
            // 
            this.txtDatabaseName.BackColor = System.Drawing.Color.Silver;
            this.txtDatabaseName.Font = new System.Drawing.Font("Rockwell", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(this.txtDatabaseName, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_txtDatabaseName" +
        "");
            this.CNetHelpProvider.SetHelpNavigator(this.txtDatabaseName, System.Windows.Forms.HelpNavigator.Topic);
            this.txtDatabaseName.Location = new System.Drawing.Point(157, 60);
            this.txtDatabaseName.MaxLength = 20;
            this.txtDatabaseName.Name = "txtDatabaseName";
            this.CNetHelpProvider.SetShowHelp(this.txtDatabaseName, true);
            this.txtDatabaseName.Size = new System.Drawing.Size(213, 22);
            this.txtDatabaseName.TabIndex = 2;
            // 
            // txtPassword
            // 
            this.txtPassword.BackColor = System.Drawing.Color.Silver;
            this.txtPassword.Font = new System.Drawing.Font("Rockwell", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(this.txtPassword, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_txtPassword");
            this.CNetHelpProvider.SetHelpNavigator(this.txtPassword, System.Windows.Forms.HelpNavigator.Topic);
            this.txtPassword.Location = new System.Drawing.Point(157, 112);
            this.txtPassword.MaxLength = 20;
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.PasswordChar = '•';
            this.CNetHelpProvider.SetShowHelp(this.txtPassword, true);
            this.txtPassword.Size = new System.Drawing.Size(213, 22);
            this.txtPassword.TabIndex = 4;
            // 
            // btnConnect
            // 
            this.CNetHelpProvider.SetHelpKeyword(this.btnConnect, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_btnConnect");
            this.CNetHelpProvider.SetHelpNavigator(this.btnConnect, System.Windows.Forms.HelpNavigator.Topic);
            this.btnConnect.Location = new System.Drawing.Point(133, 150);
            this.btnConnect.Name = "btnConnect";
            this.CNetHelpProvider.SetShowHelp(this.btnConnect, true);
            this.btnConnect.Size = new System.Drawing.Size(75, 23);
            this.btnConnect.TabIndex = 5;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblMessage);
            this.groupBox1.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CNetHelpProvider.SetHelpKeyword(this.groupBox1, "Manufacturing_System_Form_frmServerSettings.htm#frmServerSettings_groupBox1");
            this.CNetHelpProvider.SetHelpNavigator(this.groupBox1, System.Windows.Forms.HelpNavigator.Topic);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.CNetHelpProvider.SetShowHelp(this.groupBox1, true);
            this.groupBox1.Size = new System.Drawing.Size(389, 176);
            this.groupBox1.TabIndex = 114;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Server Connection";
            // 
            // CNetHelpProvider
            // 
            this.CNetHelpProvider.HelpNamespace = "C:\\Manufacturing_System.chm";
            // 
            // lblMessage
            // 
            this.lblMessage.AutoSize = true;
            this.lblMessage.Font = new System.Drawing.Font("Rockwell", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMessage.Location = new System.Drawing.Point(7, 138);
            this.lblMessage.Name = "lblMessage";
            this.lblMessage.Size = new System.Drawing.Size(19, 14);
            this.lblMessage.TabIndex = 0;
            this.lblMessage.Text = "**";
            // 
            // frmServerConfig
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ClientSize = new System.Drawing.Size(411, 197);
            this.Controls.Add(this.btnLogin);
            this.Controls.Add(this.cmbServer);
            this.Controls.Add(lblUsername);
            this.Controls.Add(this.txtUsername);
            this.Controls.Add(lblServerIP);
            this.Controls.Add(lblDatabaseName);
            this.Controls.Add(this.txtDatabaseName);
            this.Controls.Add(lblPasswrod);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.btnConnect);
            this.Controls.Add(this.groupBox1);
            this.MaximizeBox = false;
            this.Name = "frmServerConfig";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Server Configuration";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmServerConfig_FormClosing);
            this.Load += new System.EventHandler(this.frmServerConfig_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.HelpProvider CNetHelpProvider;
        private System.Windows.Forms.ComboBox cmbServer;
        private System.Windows.Forms.TextBox txtUsername;
        private System.Windows.Forms.TextBox txtDatabaseName;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblMessage;
    }
}