<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LoginPage2Admin.aspx.cs" Inherits="pokedex_web.LoginPage2Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ESA!</h1>
    <p>Tenés perfil de admin, sino no podrías estar acá.</p>
    <asp:Button Text="Regresar" ID="btnRegresar" OnClick="btnRegresar_Click" CssClass="btn btn-primary" runat="server" />
</asp:Content>
