<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="pokedex_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4">
            <h2>Creá tu perfil Trainee</h2>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
            </div>
            <asp:Button Text="Registrarse" CssClass="btn btn-primary" OnClick="btnRegistrarse_Click" ID="btnRegistrarse" runat="server" />
            <a href="/">Cancelar</a>
        </div>
    </div>
</asp:Content>
