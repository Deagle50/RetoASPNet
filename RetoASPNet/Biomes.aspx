<%@ Page Title="Biomes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Biomes.aspx.cs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
         
                           

            <%-- GridView con los mobs escogidos en el DDL, por defecto, de "Hostiles" --%>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="BiomesMinecraft">
                </asp:GridView>
            
            <%-- Origen de datos --%>
            <%-- Datos GridView --%>
           <asp:SqlDataSource ID="BiomesMinecraft" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" 
               SelectCommand="SELECT biome_name, type, [desc]
               FROM Minecraft.Biomes">
                
            </asp:SqlDataSource>
        </div>
    

</asp:Content>
