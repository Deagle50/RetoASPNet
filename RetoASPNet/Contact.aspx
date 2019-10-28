<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RetoASPNet.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="darkprincipal principal" id="principalid">        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div style="width:100%;height:300px;">
              <div class="divcontacto" style="border-radius:10px; width: 40%; height: 200px; padding:2%;margin:0px;float:left;">
                  <div class="contacto darkcontacto" id="contactoid">
                      Julen Martín Errazkin, julenmartin.martin@gmail.com
                  </div>
                  <div class="contacto darkcontacto">
                      Urko Urbieta Bueno, urko.seim@gmail.com
                  </div>
              </div>
              <div style="border-radius:10px; width: 50%; height: 250px; padding:2% 2% .5% 2% ;margin:10px 10px 5px 10px;float:right;" id="map"></div>
            </div>
            <div class="piedefoto" style="float:right;padding-right:2%; margin-right:10px;">Dirección: Calle Miracruz, 10, 20001, Donostia, Gipuzkoa</div>
    </div>
            
</asp:Content>
