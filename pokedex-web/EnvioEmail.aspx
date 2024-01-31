<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EnvioEmail.aspx.cs" Inherits="pokedex_web.EnvioEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-2"></div>
        <div class="col">
            <div class="mb-3">
                <label class="form-label">E-mail</label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label class="form-label">Asunto</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtAsunto" />
            </div>
            <div class="mb-3">
                <label class="form-label">Mensaje</label>
                <asp:TextBox runat="server" ID="txtMensaje" TextMode="MultiLine" CssClass="form-control" />
            </div>
            <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
