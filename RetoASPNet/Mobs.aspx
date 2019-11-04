<%@ Page Title="Mobs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mobs.aspx.cs" Inherits="RetoASPNet.Mobs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="darkprincipal principal" id="principalid">        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div class="tabla">
               
            <table style="width:100%;">
                <tr>
                    <th>Imagen</th>
                    <th>Mob</th>
                    <th>Bioma</th>
                    <th>Tipo de mob</th>
                    <th>Vida</th>
                    <th>Daño</th>
                    <th>Distancia de visión</th>
                    <th>Descripción</th>
                    <th>Drops</th>
                    <th>Raredrops</th>
                    <th>Exp</th>

                </tr>
            <asp:Repeater ID="mobsRepeater" runat="server">
                <ItemTemplate>
                            <tr>  
                                <td class="tablerow"><img src="<%# Eval("image") %>" alt="<%# Eval("image") %>" /></td>
                                <td class="tablerow"><%# Eval("mob_name") %></td>
                                <td class="tablerow"><%# Eval("biome_name") %></td>
                                <td class="tablerow"><%# Eval("mob_type") %></td>
                                <td class="tablerow"><%# Eval("healthpoints") %></td>
                                <td class="tablerow"><%# Eval("damage") %></td>                                
                                <td class="tablerow"><%# Eval("trigger_vision") %></td>
                                <td class="tablerow" style="width:35%;"><%# Eval("trigger_desc") %></td>
                                <td class="tablerow"><%# Eval("drop") %></td>
                                <td class="tablerow"><%# Eval("raredrop") %></td>
                                <td class="tablerow"><%# Eval("exp") %></td>
                            </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
    </div>

</asp:Content>