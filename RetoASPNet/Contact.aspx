<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RetoASPNet.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="darkprincipal principal" id="principalid">        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div style="width:100%;height:300px;">
              <div class="divcontacto" style="border-radius:10px; width: 45%; height: 200px; padding:2%;margin:0px;float:left;">
                  <div class="contacto darkcontacto" id="contactoid">
                      Julen Martín Errazkin, julenmartin.martin@gmail.com
                      <br />
                      Teléfono: 123456789
                  </div>
                  <div class="contacto darkcontacto">
                      Urko Urbieta Bueno, urko.seim@gmail.com
                      <br />
                      Teléfono: 123456789
                  </div>
              </div>
              <div style="border-radius:10px; width: 45%; height: 200px; padding:2%;padding-bottom:5%;margin:0px;float:right;">
                  <p>Si quieres contactar con nosotros, rellena el formulario de debajo con tu consulta y tu correo electrónico.
                      Nos pondremos en contacto contigo en cuanto nos sea posible.
                  </p>
                <label class="lbl" style="margin-left:15%;">Nombre</label><br/>
                  <input runat="server" name="name" id="txtName" type="text" class="lbla txt" style="width:70%; margin-left:15%;"/><br/>
                <label class="lbl" style="margin-left:15%;">Correo electrónico</label><br/>
                  <%--<input runat="server" name="name" id="txtEmail" type="email" class="lbla txt" /><br/>--%>
                  <input runat="server" name="email" id="Email1" type="email" class="txt" style="width:70%; margin-left:15%;" required/>
                <label class="lbl" style="margin-left:15%;">Tu consulta</label><br/>
                  <textarea rows="7" class="txt" style="width:70%; margin-left:15%; background-color:transparent;" wrap="soft"></textarea>
                             
                  <asp:Button ID="btEnviar" CssClass="btnr" runat="server" Text="Enviar" OnClick="btEnviar_Click" style="margin-right:15%;"/><br />
                </div>
            </div>
            
    </div>
            
</asp:Content>
