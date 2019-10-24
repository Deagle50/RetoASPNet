<%@ Page Title="Mobs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mobs.aspx.cs" Inherits="RetoASPNet.Mobs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %>
                
            </h1>    

            <asp:DropDownList ID="DDLMobs" runat="server" DataSourceID="TipoMob" DataTextField="Tipo" DataValueField="Tipo" AutoPostBack="true">
                </asp:DropDownList>                        

            <asp:GridView ID="GridView1" runat="server" DataSourceID="MobsMinecraft">
                </asp:GridView>
            
            <%-- Origen de datos --%>
            <%-- Datos DDL Mob --%>
            <asp:SqlDataSource ID="TipoMob" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" 
                SelectCommand="SELECT tipo FROM Minecraft.Mobs GROUP BY tipo"></asp:SqlDataSource>

            <%-- Datos GridView --%>
           <asp:SqlDataSource ID="MobsMinecraft" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" 
               SelectCommand="SELECT [image],[mob_name], [biomes_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [exp], [tool_id] 
               FROM Minecraft.Mobs WHERE ([tipo] = @tipo)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDLMobs" Name="tipo" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            
    </div>

</asp:Content>