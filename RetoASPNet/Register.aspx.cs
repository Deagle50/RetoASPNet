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
                if (txtPass.Text == txtPass2.Text)
                {
                    comando.Parameters.AddWithValue("@usuario", txtUsuario.Text);
                    comando.Parameters.AddWithValue("@pass", txtPass.Text);
                    comando.Parameters.AddWithValue("@nombre", txtNombre.Text);
                    comando.Parameters.AddWithValue("@apellido", txtApellido.Text);
                    comando.Parameters.AddWithValue("@fecha", txtFec.Text);
                    sqlConn.Open();
                    comando.ExecuteNonQuery();
                    sqlConn.Close();
                }
                else
                    lblError.Text = "Error: las contraseñas tienen que ser iguales";

            }
        }
    }
}