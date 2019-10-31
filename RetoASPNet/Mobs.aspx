<%@ Page Title="Mobs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mobs.aspx.cs" Inherits="RetoASPNet.Mobs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %>
                
            </h1>    
            <%-- DropDownList de tipos de mobs --%>
            <asp:DropDownList ID="DDLMobs" runat="server" DataSourceID="TipoMob" DataTextField="mob_type" DataValueField="mob_type" AutoPostBack="true">
                </asp:DropDownList>                        

            <%-- GridView con los mobs escogidos en el DDL, por defecto, de "Hostiles" --%>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="MobsMinecraft">
                </asp:GridView>
            
            <%-- Origen de datos --%>
            <%-- Datos DDL Mob --%>
            <asp:SqlDataSource ID="TipoMob" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" 
                SelectCommand="SELECT mob_type FROM Minecraft.Mobs GROUP BY mob_type"></asp:SqlDataSource>

            <%-- Datos GridView --%>
           <asp:SqlDataSource ID="MobsMinecraft" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" 
               SelectCommand="SELECT image, mob_name, biome_name, mob_type, healthpoints, damage, trigger_vision, trigger_desc, [drop], raredrop, exp
               FROM Minecraft.Mobs 
               JOIN Minecraft.Biomes
               ON Minecraft.Biomes.Biome_id = Minecraft.Mobs.Biome_id              
               WHERE (Minecraft.Mobs.mob_type = @tipo)">
               
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDLMobs" Name="tipo" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            
    </div>

</asp:Content>