<%@ Page Title="Tools" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tools.aspx.cs" Inherits="RetoASPNet.Tools" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
        <div class="tabla">
            <table style="width:100%;">
            <asp:Repeater ID="toolsRepeater" runat="server">
                <ItemTemplate>
                            <tr>
                                <%--<td class="tablerow"><%# Eval("Tool_id") %></td>--%>
                                <%--<td class="tablerow"><%# Eval("Tool_image") %></td>--%>
                                <td class="tablerow"><%# Eval("Tool_name") %></td>
                                <td class="tablerow"><%# Eval("resources") %></td>
                                <td class="tablerow"><%# Eval("durability") %></td>
                                <td class="tablerow"><%# Eval("damage_attack") %></td>
                                <td class="tablerow"><%# Eval("armor") %></td>
                            </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
    </div>

</asp:Content>
