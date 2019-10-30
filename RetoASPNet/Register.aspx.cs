using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetoASPNet
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string strConnectionString = ConfigurationManager.ConnectionStrings["DAM_Compartido_DEVConnectionString"].ToString();
            using (SqlConnection sqlConn = new SqlConnection(strConnectionString))
            {
                SqlCommand comando = new SqlCommand("Minecraft.Registrar_Insertar", sqlConn);
                comando.CommandType = CommandType.StoredProcedure;
                
                if (txtPass1.Value == txtPass2.Value)
                {
                    comando.Parameters.AddWithValue("@usuario", txtUser.Value);
                    comando.Parameters.AddWithValue("@pass", txtPass1.Value);
                    comando.Parameters.AddWithValue("@nombre", txtName.Value);
                    comando.Parameters.AddWithValue("@correo", txtEmail.Value);
                    comando.Parameters.AddWithValue("@apellido", txtLastname.Value);
                    comando.Parameters.AddWithValue("@fecha", txtDate.Value);
                    sqlConn.Open();
                    comando.ExecuteNonQuery();
                    sqlConn.Close();
                    Response.Redirect("source.aspx");
                }
                else
                    lblError.Text = "Error: las contraseñas tienen que ser iguales";

            }
        }
    }
}