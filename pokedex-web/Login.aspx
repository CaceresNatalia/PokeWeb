<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pokedex_web.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        <div class="mb-3">
            <label class="form-label">Email</label>
            <asp:TextBox ID="txtEmail" placeholder="user email" CssClass="form-control" runat="server" />
            <%--<asp:RegularExpressionValidator ErrorMessage="Formato email, por favor" CssClass="validacion" ValidationExpression="^[\w\-\.]+@([\w-]+\.)+[\w-]{2,}$" ControlToValidate="txtEmail" runat="server" />--%>
        </div>
        <label class="form-label">Password</label>
        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="*****" cssclass="form-control" />
    </div>
    <asp:Button Text="Ingresar" ID="btnIngresar" cssclass="btn btn-primary" OnClick="btnIngresar_Click"  runat="server" />
</asp:Content>
