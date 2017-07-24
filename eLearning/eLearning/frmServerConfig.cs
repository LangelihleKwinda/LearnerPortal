using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;
using System.Threading;
using System.IO;

namespace eLearning
{
    public partial class frmServerConfig : Form
    {
        public frmServerConfig()
        {
            InitializeComponent();
        }

        private void frmServerConfig_Load(object sender, EventArgs e)
        {
            try
            {
                if (File.Exists(Constants.ServerSettingsPath))
                {
                    using (StreamReader sr = File.OpenText(Constants.ServerSettingsPath))
                    {
                        ServerConfig.serverIP = sr.ReadLine();
                        ServerConfig.dbName = sr.ReadLine();
                        ServerConfig.username = sr.ReadLine();
                        ServerConfig.password = sr.ReadLine();
                    }

                    ServerConfig.connStr();
                    btnConnect.Enabled = false;
                    btnConnect.Visible = false;
                    btnLogin.Enabled = true;
                    cmbServer.Enabled = false;

                    lblMessage.Text = string.Concat("Connected To Database Server");
                    lblMessage.Visible = true;
                    lblMessage.ForeColor = Color.Green;
                    cmbServer.Focus();

                    cmbServer.SelectedText = ServerConfig.serverIP;
                    txtDatabaseName.Text = Constants.Hide;
                    txtUsername.Text = Constants.Hide;
                    txtPassword.Text = Constants.Hide;

                    cmbServer.Enabled = false;
                    txtDatabaseName.ReadOnly = true;
                    txtPassword.ReadOnly = true;
                    txtUsername.ReadOnly = true;

                    txtDatabaseName.ForeColor = Color.Blue;
                    txtPassword.ForeColor = Color.Blue;
                    txtUsername.ForeColor = Color.Blue;
                    cmbServer.ForeColor = Color.Blue;
                }

                else
                {
                    btnLogin.Enabled = false;
                    btnLogin.Visible = false;
                    lblMessage.Text = string.Empty;

                    RegistryView registryView = Environment.Is64BitOperatingSystem ? RegistryView.Registry64 : RegistryView.Registry32;

                    using (RegistryKey hklm = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, registryView))
                    {
                        RegistryKey instanceKey = hklm.OpenSubKey(@"SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL", false);

                        if (instanceKey != null)
                        {
                            foreach (var instanceName in instanceKey.GetValueNames())
                            {
                                if (instanceName == "MSSQLSERVER")
                                    cmbServer.Items.Add(System.Environment.MachineName);
                                else
                                    cmbServer.Items.Add(System.Environment.MachineName + @"\" + instanceName);
                            }
                        }
                    }
                }
            }

            catch { }
        }

        private void btnConnect_Click(object sender, EventArgs e)
        {
            if (cmbServer.SelectedIndex == -1)
            {
                MessageBox.Show("Please select Server IP");
                cmbServer.Focus();
            }

            else if (string.IsNullOrEmpty(txtDatabaseName.Text))
            {
                MessageBox.Show("Please enter database name");
                txtDatabaseName.Focus();
            }

            else if (string.IsNullOrEmpty(txtUsername.Text))
            {
                MessageBox.Show("Please enter username");
                txtUsername.Focus();
            }

            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                MessageBox.Show("Please enter password");
                txtPassword.Focus();
            }

            else
            {
                ServerConfig.serverIP = cmbServer.Text;
                ServerConfig.dbName = txtDatabaseName.Text;
                ServerConfig.username = txtUsername.Text;
                ServerConfig.password = txtPassword.Text;

                try
                {
                    ServerConfig.connStr();

                    btnConnect.Visible = false;
                    cmbServer.Enabled = false;
                    txtDatabaseName.ReadOnly = true;
                    txtPassword.ReadOnly = true;
                    txtUsername.ReadOnly = true;

                    bool result = SaveSettings();

                    if (result)
                    {
                        btnConnect.Visible = false;
                        btnLogin.Visible = true;
                        btnLogin.Enabled = true;

                        lblMessage.Text = string.Concat("Connected To Database Server");
                        lblMessage.Visible = true;
                        lblMessage.ForeColor = Color.Green;
                        btnLogin.Focus();
                    }

                    else
                    {
                        DialogResult ans = MessageBox.Show("The drive is not found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                        if (ans == DialogResult.OK)
                            Application.Exit();
                    }
                }

                catch (Exception ex)
                {
                    DialogResult ans = MessageBox.Show(ex.Message, ex.GetType().ToString(), MessageBoxButtons.OK, MessageBoxIcon.Error);

                    if (ans == DialogResult.OK)
                        Application.Exit();
                }
            }
        }

        public bool SaveSettings()
        {
            try
            {
                if (File.Exists(Constants.ServerSettingsPath))
                    File.Delete(Constants.ServerSettingsPath);

                using (FileStream fs = File.Create(Constants.ServerSettingsPath, 1024))
                {
                    byte[] info = new UTF8Encoding(true).GetBytes(ServerConfig.serverIP);
                    byte[] inform = new UTF8Encoding(true).GetBytes(ServerConfig.dbName);
                    byte[] informs = new UTF8Encoding(true).GetBytes("\r\n");
                    byte[] informate = new UTF8Encoding(true).GetBytes(ServerConfig.username);
                    byte[] informated = new UTF8Encoding(true).GetBytes(ServerConfig.password);

                    fs.Write(info, 0, info.Length);
                    fs.Write(informs, 0, informs.Length);
                    fs.Write(inform, 0, inform.Length);
                    fs.Write(informs, 0, informs.Length);
                    fs.Write(informate, 0, informate.Length);
                    fs.Write(informs, 0, informs.Length);
                    fs.Write(informated, 0, informated.Length);
                }

                return true;
            }

            catch { return false; }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            ShowLogin();
        }

        private void ShowLogin()
        {
            this.Hide();
            frmLogin login = new frmLogin();
            login.Show();
        }

        private void frmServerConfig_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}