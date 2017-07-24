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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            txtMessage.ReadOnly = true;
            string selectMessage = "select top 1 quote from Quote_Of_The_Day";

            using (SqlConnection conn = new SqlConnection(ServerConfig.conn.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(selectMessage, conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();


                }
            }
        }
    }
}
