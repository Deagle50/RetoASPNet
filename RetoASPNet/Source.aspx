<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Source.aspx.cs"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <%-- CSS propio --%>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
    <div class="darkprincipal principal" id="principalid">
        <h1 class="titulo"><%:Page.Title %></h1>
            <p class="parrafoprincipal">
                Lorem ipsum dolor sit amet consectetur adipiscing elit interdum dapibus morbi eros,
                mollis luctus vivamus cum odio facilisi nibh libero vehicula. Eleifend ornare quam 
                integer posuere bibendum interdum euismod orci, proin cum augue fermentum ultricies
                netus phasellus nullam torquent, aptent ligula nec facilisi iaculis vitae luctus. 
                Erat pretium gravida vel proin est tincidunt sagittis augue, eleifend praesent nisl
                mi placerat etiam justo ante ad, enim dignissim hac dis porttitor pulvinar fringilla.

                Dictum nulla cum himenaeos mollis lacus est mus duis convallis, libero commodo porttitor
                et habitasse nostra semper. Velit laoreet dis sed praesent congue curae eros varius blandit 
                eu sociis, viverra dictumst sagittis in erat aenean semper gravida cubilia nisi ridiculus, 
                purus cras augue ante massa nisl nascetur molestie porta fusce. Hac ligula aptent erat 
                suspendisse natoque arcu feugiat facilisi ullamcorper magnis curae, consequat dis habitant 
                ad diam susci pit dapibus.
            </p>
    </div>
    

</asp:Content>
