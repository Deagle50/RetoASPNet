﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetoASPNet
{
    public partial class Structures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DAM_Compartido_DEVConnectionString"].ToString();
            var sqlConnection = new SqlConnection(connStr);

            //Create a SQLCommand using the StoredProcedure and the SqlConnection.
            var sqlCommand = new SqlCommand("Minecraft.getStructures", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlConnection.Open();
            var reader = sqlCommand.ExecuteReader();

            //Bing the repeater to the sql reader.
            structuresRepeater.DataSource = reader;
            structuresRepeater.DataBind();

            sqlConnection.Close();
        }
    }
}