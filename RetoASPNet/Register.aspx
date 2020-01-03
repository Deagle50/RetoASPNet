<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RetoASPNet.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="darkprincipal principal" id="principalid">
        
            <h1 class="titulo"><%:Page.Title %></h1>    
            <div id="formularioid" class="formulario darkformulario">
                
                <label for="name" class="lbla lbl">Nombre</label>
                <label for="lastname" class="lblb lbl">Apellido</label>
                     <input runat="server" name="name" id="txtName" type="text" class="lbla txt" required />
                     <input runat="server" name="lastname" id="txtLastname" type="text" class="lblb txt" />

                <label for="user" class="lbla lbl" >Usuario</label>
                <label for="email" class="lblb lbl">Correo electrónico</label>
                     <input runat="server" name="user" id="txtUser" class="lbla txt" required/>
                     <input runat="server" name="email" id="txtEmail" type="email" class="lblb txt" required/>
                    
                <label for="pass1" class="lbla lbl">Contraseña</label>
                <label for="pass2" class="lblb lbl">Repita la contraseña</label>
                
                     <input runat="server" name="pass1" id="txtPass1" type="password" class="lbla txt" required />
                     <input runat="server" name="pass2" id="txtPass2" type="password" class="lblb txt" required />

                <label for="date" class="lbla lbl">Fecha de nacimiento</label>
                <label id="ñapa" class="lblb lbl"> &nbsp;</label>
                     <input runat="server" name="date" id="txtDate" type="date"  class="lbla txt" />
                    <%--<asp:TextBox ID="txtFec" CssClass="txt lbla" runat="server" TextMode="Date"></asp:TextBox>--%>
                
                    <asp:Label ID="lblError" CssClass="lbl lbla lblError" runat="server" Text=""></asp:Label>
                
                    <asp:Button ID="btnRegistrar" CssClass="btnr" runat="server" Text="Registrarse" OnClick="btnRegistrar_Click" />             
                 <br /><br /><br /><br /><br /><br /><br /><br /><br />
            </div>
    </div>
</asp:Content>

