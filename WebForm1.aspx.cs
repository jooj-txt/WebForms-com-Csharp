using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula_dia_24_10
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            MySqlConnection cn = new MySqlConnection();

            cn.ConnectionString = ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;

            cn.Open();




            MySqlCommand cmd = new MySqlCommand();

            cmd.Connection = cn;

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.CommandText = "inserirAluno";

            cmd.Parameters.AddWithValue("nome", txtAluno.Text);

            cmd.Parameters.AddWithValue("n1", txtNota1.Text);

            cmd.Parameters.AddWithValue("n2", txtNota2.Text);

            cmd.Parameters.AddWithValue("n3", txtNota3.Text);

            cmd.Parameters.AddWithValue("n4", txtNota4.Text);

            cmd.ExecuteNonQuery();

            cn.Close();
        }
    }
}