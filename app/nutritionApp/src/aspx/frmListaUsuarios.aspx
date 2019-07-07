<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmListaUsuarios.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
<!--<asp:BoundField HeaderText="Adiccion" DataField="nombre" />
               <asp:BoundField HeaderText="Código" DataField="codigo" />-->
        <asp:GridView ID="grdMuestraUsuarios" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
           <Columns>
               
               <asp:HyperLinkField Text="Modificar" NavigateUrl="~/Forms/frmModificaAdiccion_Admin.aspx" DataNavigateUrlFields="id_Adiccion" DataNavigateUrlFormatString="frmModificaAdiccion_Admin?id_Adiccion={0}"/>
               <asp:HyperLinkField Text="Eliminar" NavigateUrl="~/Forms/frmEliminaAdiccion_Admin.aspx" DataNavigateUrlFields="id_Adiccion" DataNavigateUrlFormatString="frmEliminaAdiccion_Admin?id_Adiccion={0}"  />
           </Columns>
            
            
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </form>
</body>
</html>
