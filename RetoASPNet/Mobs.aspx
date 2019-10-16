<%@ Page Title="Mobs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mobs.aspx.cs" Inherits="RetoASPNet.Mobs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%-- CSS propio --%>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %>
                
            </h1>    

            <asp:DropDownList ID="DDLMobs" runat="server" DataSourceID="DatosMobs" DataTextField="Tipo" DataValueField="Mob_id">
                </asp:DropDownList>            

            <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>

            <%-- Origen de datos --%>
            <asp:SqlDataSource ID="DatosMinecraft" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>"
                SelectCommand="SELECT * FROM Minecraft.Mobs WHERE (Tipo = @Tipo) GROUP BY Tipo">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDLMobs" Name="Tipo" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:SqlDataSource ID="DatosMobs" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>"
                SelectCommand="SELECT * FROM Minecraft.Mobs"></asp:SqlDataSource>
        
    </div>

</asp:Content>