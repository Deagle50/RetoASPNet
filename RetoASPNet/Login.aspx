<%@ Page Title="Inicio de sesión" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RetoASPNet.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="darkprincipal principal" id="principalid">        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div style="width:100%;height:320px;">
              <div class="formulario darkformulario" id="loginForm">                  
                    

                    <label for="email" class="lbla lbl">Email</label><br /><br/>
                    <input type="email" class="lbla txt" style="width:100%;" placeholder="Correo electrónico" name="email" required><br />

                    <label for="psw" class="lbla lbl">Password</label><br/><br/>
                    <input type="password" class="lbla txt" style="width:100%;" placeholder ="Contraseña" name="psw" required>

                    <br /><button type="submit" class="btnr" style="margin-top:20px;" >Login</button>
                </div>
            </div>
    </div>
            
</asp:Content>
