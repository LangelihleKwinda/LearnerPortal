using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Data.SqlClient;
using System.Threading;
using Microsoft.Win32;

namespace eLearning
{
    class ServerConfig
    {
        //declaring database connection variables and server variable
        public static SqlConnection conn;
        public static SqlCommand comm;
        //public static Server srv;
        public static SqlDataReader dtr;

        //declaring  variables to hold data from textboxes
        public static string serverIP;//calling static for variables that are not member of a class of which they are going to be used.
        public static string dbName;
        public static string username;
        public static string password;

        public static void connStr()
        {
            //connection string that connects to the database
            conn = new SqlConnection("Data Source=" + serverIP + ";Trusted_Connection=True;Initial Catalog=" + dbName + ";User ID=" + username + ";Password=" + password);

            //saving the connection string from one class to another class
            Program.con = conn;

            // Program .conString  = "Data Source=" + serverIP + ";Initial Catalog=" + dbName + ";User ID=" + username + ";Password=" + password;

            //opening conection
            conn.Open();
       //     Program.con.Close();//clossing the server connection   
        }
    }
}