<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmListaUsuarios.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Lista de Usuarios</h1>
<!--<asp:BoundField HeaderText="Adiccion" DataField="nombre" />
               <asp:BoundField HeaderText="Código" DataField="codigo" />-->
        <asp:GridView ID="grdMuestraUsuarios" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="grdMuestraUsuarios_SelectedIndexChanged" Width="996px">
            <AlternatingRowStyle BackColor="White" />
           <Columns>
               
               <asp:HyperLinkField Text="Modificar" NavigateUrl="~/Forms/frmModificaAdiccion_Admin.aspx" DataNavigateUrlFields="id_Adiccion" DataNavigateUrlFormatString="frmModificaAdiccion_Admin?id_Adiccion={0}"/>
               <asp:HyperLinkField Text="Eliminar" NavigateUrl="~/Forms/frmEliminaAdiccion_Admin.aspx" DataNavigateUrlFields="id_Adiccion" DataNavigateUrlFormatString="frmEliminaAdiccion_Admin?id_Adiccion={0}"  />
           </Columns>
            
            
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />

        </asp:GridView>
    </form>
</body>
</html>
