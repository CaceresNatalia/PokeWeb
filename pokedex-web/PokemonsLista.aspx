<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="pokedex_web.PokemonsLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Pokemons</h1>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label Text="Filtrar" runat="server" />
                <asp:TextBox ID="txtFiltro" AutoPostBack="true" CssClass="form-control" OnTextChanged="txtFiltro_TextChanged" runat="server" />
            </div>
        </div>
        <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end">
            <div class="mb-3">
                <asp:CheckBox Text="Filtro avanzado"
                    ID="chkAvanzado" CssClass="" runat="server"
                    autopostback="true"
                    OncheckedChanged="ckdAvanzado_CheckedChanged"/>
                <asp:Button Text="Limpiar filtros" ID="btnLimpiarFiltros" OnClick="btnLimpiarFiltros_Click" CssClass="btn btn-outline-primary" runat="server" />
            </div>
        </div>
    </div>

    <%      if (FiltroAvanzado)
        {
    %>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Campo"  runat="server"  />
                <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="true" ID="ddlCampo" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" >
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Tipo" />
                    <asp:ListItem Text="Número" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Criterio" runat="server" />
                <asp:DropDownList ID="ddlCriterio" CssClass="form-control" runat="server">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Filtro" runat="server" />
                <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Estado" runat="server" />
                <asp:DropDownList ID="ddlEstado" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Todos" />
                    <asp:ListItem Text="Activo" />
                    <asp:ListItem Text="Inactivo" />
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Button Text="Buscar" ID="btnBuscar" CssClass="btn btn-primary" runat="server" OnClick="btnBuscar_Click" />
            </div>
        </div>
    </div>
    <%} %>

    <asp:GridView ID="dgvPokemons" CssClass="table" DataKeyNames="Id"
        AutoGenerateColumns="false" runat="server" OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
        OnPageIndexChanging="dgvPokemons_PageIndexChanging" AllowPaging="true" PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Número" DataField="Numero" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText=" ✍️ " />
        </Columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>


</asp:Content>
