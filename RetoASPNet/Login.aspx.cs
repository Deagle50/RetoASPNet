using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RetoASPNet
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            idlabelincorrecto.InnerText = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int resul;
            string user;
            string strConnectionString = ConfigurationManager.ConnectionStrings["DAM_Compartido_DEVConnectionString"].ToString();
            using (SqlConnection sqlConn = new SqlConnection(strConnectionString))
            {
                SqlCommand comando = new SqlCommand("Minecraft.IniciarSesion", sqlConn);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@email", txtEmail.Value);
                comando.Parameters.AddWithValue("@pass", txtPass.Value);
                comando.Parameters.Add("@resultado", SqlDbType.TinyInt).Direction = ParameterDirection.Output;
                comando.Parameters.Add("@username", SqlDbType.VarChar, size:50).Direction = ParameterDirection.Output;
                sqlConn.Open();
                comando.ExecuteNonQuery();
                resul = Int32.Parse(comando.Parameters["@resultado"].Value.ToString());
                user = comando.Parameters["@username"].Value.ToString();
                sqlConn.Close();
            }
            
            if (resul == 1)
            {
                Session["Usuario"] = user;
                Response.Redirect("source.aspx");
                
            }
            else
            {
                idlabelincorrecto.InnerText="El usuario o contraseña esta mal";
            }
        }
    }
}