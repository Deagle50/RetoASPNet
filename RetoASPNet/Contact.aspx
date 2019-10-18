<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RetoASPNet.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%-- CSS propio --%>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
    <div class="darkprincipal principal" id="principalid">        
            <h1 class="titulo"><%:Page.Title %></h1>    
              <div class="divcontacto" style="width:40%;height:200px;margin-right:0%;float:left;"></div>
              <div style="border-radius:10px; width: 40%; height: 200px; padding:2%;margin:0px;float:right;" id="map"></div>
      
    </div>
            
</asp:Content>
