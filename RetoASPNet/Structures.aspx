<%@ Page Title="Structures" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Structures.aspx.cs" Inherits="RetoASPNet.Structures" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
        <%-- GridView of structures --%>
            <asp:GridView ID="GVStructures" runat="server" DataSourceID="StructuresMinecraft">
                </asp:GridView>
            
            <%-- Origen de datos --%>
            <%-- Datos GridView --%>
           <asp:SqlDataSource ID="StructuresMinecraft" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" 
               SelectCommand="SELECT struct_name, biome_name, struct_desc, size, tool_name, dimension_name
               FROM Minecraft.Structures
               JOIN Minecraft.Biomes
               ON Minecraft.Biomes.biome_id = Minecraft.Structures.biome_id
               JOIN Minecraft.Tools
               ON Minecraft.Tools.tool_id = Minecraft.Structures.tool_id
               JOIN Minecraft.Dimensions
               ON Minecraft.Dimensions.dimension_id = Minecraft.Dimensions.dimension_id
               WHERE Dimensions.dimension_id = Structures.dimension_id">
            </asp:SqlDataSource>
    </div>

</asp:Content>