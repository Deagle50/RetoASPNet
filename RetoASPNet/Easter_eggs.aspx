<%@ Page Title="Easter Eggs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Easter_eggs.aspx.cs" Inherits="RetoASPNet.Easter_eggs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
        <table style="width:100%;">
                <tr>
                    <th>Easter Egg</th>               
                    <th>Descripción</th>
                    <th>Fecha de adición</th>
                </tr>
            <asp:Repeater ID="easterEggsRepeater" runat="server">
                <ItemTemplate>
                            <tr>  
                                <%--<td class="tablerow"><img src="<%# Eval("image") %>" /></td>--%>
                                <td class="tablerow" style="width:8%;"><%# Eval("easter_name") %></td>
                                <td class="tablerow"><%# Eval("easter_desc") %></td>
                                <td class="tablerow"><%# Eval("easter_date") %></td>                                
                                
                                
                            </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
    
</asp:Content>
