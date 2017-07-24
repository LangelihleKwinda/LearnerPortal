using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace eLearning
{
    static class Program
    {
        /// The main entry point for the application.
        /// </summary>
        /// <summary>

        public static SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\DB_Instance\Database\LearnerPortal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        public static SqlCommand cmd = new SqlCommand();

        //public static SqlConnection con;
        public static SqlCommand com;
        public static SqlDataReader dtr;
        public static CurrencyManager cm;
        public static SqlDataAdapter da = null;
        public static DataSet ds = null;
        public static DataView dv;

        //Connection String
        public static string conString = "";

        public static void State()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }

        public static void closeConn()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new frmServerConfig());
        }
    }
}
