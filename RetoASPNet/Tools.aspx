<%@ Page Title="Tools" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tools.aspx.cs" Inherits="RetoASPNet.Tools" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
        <div class="tabla">
            <table>
            <asp:Repeater ID="toolsRepeater" runat="server">
                <ItemTemplate>
                            <tr>
                                <td class="text-center"><%# Eval("Tool_id") %></td>
                                <td class="text-center"><%# Eval("Tool_name") %></td>
                            </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
    </div>

</asp:Content>
