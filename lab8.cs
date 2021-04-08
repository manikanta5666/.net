using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication11
{
    public partial class Form1 : Form
    {
        sqlConnection1 connection = new sqlConnection1();
        

        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'masterDataSet.table_3' table. You can move, or remove it, as needed.
            this.table_3TableAdapter.Fill(this.masterDataSet.table_3);
            DataSet ds = new DataSet();
            connection = new sqlConnection1("Data Source=HT1-26;Initial Catalog=master;User ID=sa;Password=rvr");
            connection.Open();
            sqlDataAdapter1 da = new sqlDataAdapter1("select * from table_3", connection);
            da.Fill(ds, "table_3");
            textBox1.DataBindings.Add("text", ds, "table_3.eno");
            textBox2.DataBindings.Add("text", ds, "table_3.ename");
            textBox3.DataBindings.Add("text", ds, "table_3.esal");
            textBox4.DataBindings.Add("text", ds, "table_3.edep");
            
        }

        



    }
}
