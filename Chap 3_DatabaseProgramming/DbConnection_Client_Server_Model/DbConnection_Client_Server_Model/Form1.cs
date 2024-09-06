using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace DbConnection_Client_Server_Model
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string connectionString = @"Data Source=DESKTOP-7CJHVGV\SQLEXPRESS;Initial Catalog=QUANLYTRUONGHOC;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        DataSet ds = null;

        private void Form1_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connectionString);
            conn.Open();
            da = new SqlDataAdapter("Select * from GIANGVIEN", conn);
            ds = new DataSet();
            da.Fill(ds);
            dgDS_GiaoVien.DataSource = ds.Tables[0];
        }
    }
}
