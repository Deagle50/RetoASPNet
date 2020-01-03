<%@ Page Title="Structures" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Structures.aspx.cs" Inherits="RetoASPNet.Structures" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
            
        <div class="tabla">
               
            <table style="width:100%;">
                <tr>
                    <th>Estructura</th>               
                    <th>Descripción</th>
                    <th>Bioma</th>
                    <th>Tamaño</th>
                    <th>Objetos</th>
                    <th>Dimensiones</th>
                    

                </tr>
            <asp:Repeater ID="structuresRepeater" runat="server">
                <ItemTemplate>
                            <tr>  
                                <%--<td class="tablerow"><img src="<%# Eval("image") %>" /></td>--%>
                                <td class="tablerow"><%# Eval("struct_name") %></td>
                                <td class="tablerow"><%# Eval("struct_desc") %></td>
                                <td class="tablerow"><%# Eval("biome_name") %></td>                                
                                <td class="tablerow"><%# Eval("size") %></td>                                
                                <td class="tablerow"><%# Eval("tool_name") %></td>
                                <td class="tablerow"><%# Eval("dimension_name") %></td>
                                
                            </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
    </div>

</asp:Content>