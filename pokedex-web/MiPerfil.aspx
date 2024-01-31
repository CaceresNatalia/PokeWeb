<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="pokedex_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>
    <script>
        function validar() {
            //capturar el control
            const txtApellido = document.getElementById("txtApellido");
            const txtNombre = document.getElementById("txtNombre");
            if (txtApellido.value == "") {
                txtApellido.classList.add("is-invalid");
                txtApellido.classList.remove("is-valid");

                return false;
            }
            txtApellido.classList.remove("is-invalid");
            txtApellido.classList.add("is-valid");

            if (txtNombre.value == "") {
                txtNombre.classList.add("is-invalid");
                txtNombre.classList.remove("is-valid");
                return false;
            }
            txtNombre.classList.add("is-valid");
            txtNombre.classList.remove("is-invalid");

            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Mi Perfil</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" ReadOnly="true" />
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" ID="txtNombre" ClientIDMode="Static"  CssClass ="form-control" />
<%--                <asp:RequiredFieldValidator ErrorMessage="El nombre es requerido" CssClass="validacion" ControlToValidate="txtNombre" runat="server" />--%>
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox runat="server" ID="txtApellido" ClientIDMode="Static" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label class="form-label">Fecha de nacimiento</label>
                <asp:TextBox runat="server" ID="txtFechaNacimiento" CssClass="form-control" TextMode="Date"/>
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <input type="file" runat="server" id="txtImagen" cssclass="form-control" />
            </div>
                <div>
                    <asp:Image ID="imgNuevoPerfil" runat="server" ImageUrl="https://palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg" CssClass="img-fluid mb-3" />
                </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:Button Text="Guardar" CssClass="btn btn-primary" ID="btnGuardar" OnClientClick="return validar()" OnClick="btnGuardar_Click" runat="server" />
                <a href="/">Regresar</a>
            </div>
        </div>
    </div>
</asp:Content>
