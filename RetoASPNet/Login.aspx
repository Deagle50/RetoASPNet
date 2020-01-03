<%@ Page Title="Inicio de sesión" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RetoASPNet.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="darkprincipal principal" id="principalid">        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div style="width:100%;height:320px;">
              <div class="formulario darkformulario" id="loginForm">                  
                    

                    <label for="email" class="lbla lbl">Email</label><br /><br/>
                    <input runat="server" type="email" class="lbla txt" id="txtEmail" style="width:100%;" placeholder="Correo electrónico" name="email" required><br />

                    <%--<label for="psw" class="lbla lbl" id="lblPass">Password</label>--%>
                    <asp:Label ID="lblPass" CssClass="lbla lbl" runat="server" Text="Password"></asp:Label><br/><br/>
                    <input runat="server" type="password" class="lbla txt" id="txtPass" style="width:100%;" placeholder ="Contraseña" name="psw" required>
                    <label id="idlabelincorrecto" style="color:red;" runat="server">&nbsp;</label>
                    <br /><asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btnr" OnClick="btnLogin_Click" />
                </div>
            </div>
    </div>
            
</asp:Content>
