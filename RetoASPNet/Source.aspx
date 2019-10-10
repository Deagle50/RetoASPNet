<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Source.aspx.cs"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <%-- CSS propio --%>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
    <div class="principal">
        <div class="Titulo">
            <h1><%:Page.Title %></h1>    
        </div>
    </div>

</asp:Content>
