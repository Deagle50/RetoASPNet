<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RetoASPNet.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div id="formularioid" class="formulario darkformulario">
                <asp:Label ID="lblNombre" CssClass="lbl lbla" runat="server" Text="Nombre"></asp:Label>
                <asp:Label ID="lblApellido" CssClass="lbl lblb" runat="server" Text="Apellido"></asp:Label><br />

                    <asp:TextBox ID="txtNombre" CssClass="txt lbla" runat="server"></asp:TextBox>                
                    <asp:TextBox ID="txtApellido" CssClass="txt lblb" runat="server"></asp:TextBox><br />

                <asp:Label ID="lblUsuario" CssClass="lbl lbla" runat="server" Text="Nombre de usuario"></asp:Label>                    
                <asp:Label ID="lblPass" CssClass="lbl lblb" runat="server" Text="Contraseña"></asp:Label><br />

                    <asp:TextBox ID="txtUsuario" CssClass="txt lbla" runat="server"  xmlns:asp="#unknown"></asp:TextBox>
                    <asp:TextBox ID="txtPass" CssClass="txt lblb" runat="server" TextMode="Password"></asp:TextBox><br />

                <asp:Label ID="lblPass2" CssClass="lbl lbla" runat="server" Text="Repita la contraseña"></asp:Label>
                <asp:Label ID="lblFec" CssClass="lbl lblb" runat="server" Text="Fecha de nacimiento"></asp:Label><br/>

                    <asp:TextBox ID="txtPass2" CssClass="txt lbla" runat="server" TextMode="Password"></asp:TextBox>                                
                    <asp:TextBox ID="txtFec" CssClass="txt lblb" runat="server"></asp:TextBox><br />
                
                    <asp:Label ID="lblError" CssClass="lbl lbla lblError" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnRegistrar" CssClass="btnr" runat="server" Text="Registrarse" OnClick="btnRegistrar_Click" />             
            </div>
    </div>
</asp:Content>

