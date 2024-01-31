<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenuLogin.aspx.cs" Inherits="pokedex_web.MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-12">
            <h3>Te logueaste correctamente</h3>
            <hr />
        </div>
        <div class="col-4">
            <asp:Button Text="Página 1" ID="btnPagina1" CssClass="btn btn-primary" OnClick="btnPagina1_Click" runat="server" />
        </div>
        <div class="col-4">
            <% if (Session["usuario"] != null &&((dominio.Usuario)Session["usuario"]).TipoUsuario == dominio.TipoUsuario.ADMIN) { %>
            <asp:Button Text="Página 2" ID="btnPagina2" CssClass="btn btn-primary" OnClick="btnPagina2_Click" runat="server" />
            <p>Tenés que ser Admin</p>
            <%} %>
        </div>
    </div>

</asp:Content>
