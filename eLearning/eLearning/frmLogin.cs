using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace eLearning
{
    public partial class frmLogin : Form
    {
        public byte[] tempPassword { get; set; }

        public frmLogin()
        {
            InitializeComponent();
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Exit Application Now?", "Exit", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);

            if (result == DialogResult.OK)
                Application.Exit();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsername.Text))
            {
                lblMessage.Text = "Please enter username";
                lblMessage.ForeColor = Color.Red;
                lblMessage.Visible = true;
                txtUsername.Focus();
            }

            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                lblMessage.Text = "Please enter password";
                lblMessage.ForeColor = Color.Red;
                lblMessage.Visible = true;
                txtPassword.Focus();
            }

            else
            {
                lblMessage.Visible = false;
                bool grand = Login(txtUsername.Text, txtPassword.Text);

                if (grand)
                {
                    Form1 welcome = new Form1();
                    welcome.Show();
                    Hide();
                }

                else
                {
                    txtPassword.Clear();
                    txtUsername.Clear();
                    MessageBox.Show("Login Fail : Invalid User", "Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private bool Login(string username, string password)
        {
            using (SqlConnection conn = new SqlConnection(ServerConfig.conn.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Proc_Login", conn))
                {
                    conn.Open();
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter parameter = new SqlParameter("@return", SqlDbType.Int);
                    parameter.Direction = ParameterDirection.ReturnValue;

                    cmd.Parameters.Add(parameter);
                    cmd.Parameters.Add(new SqlParameter("@username", username.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@password", password.Trim()));

                    cmd.ExecuteNonQuery();
                    conn.Close();

                    int id = Convert.ToInt32(parameter.Value);

                    if (id > 0)
                        return true;

                    else
                        return false;
               }
            }
        }
    }
}