<%@ Page Title="Biomas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Biomes.aspx.cs" Inherits="RetoASPNet.Biomes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
         
                           

            <div class="tabla">
               
          <table style="width:100%;">
               <tr>
                    <th>Bioma</th>               
                    <th>Tipo</th>
                    <th>Descripción</th>
                </tr> 
            <asp:Repeater ID="biomesRepeater" runat="server">
                <ItemTemplate>
                            <tr>  
                                <%--<td class="tablerow"><img src="<%# Eval("image") %>" /></td>--%>                                
                                <td class="tablerow" style="padding:10px;"><%# Eval("biome_name") %></td>
                                <td class="tablerow" style="padding:10px;"><%# Eval("type") %></td>
                                <td class="tablerow" style="padding:10px;"><%# Eval("desc") %></td>
                            </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
        </div>
    

</asp:Content>
