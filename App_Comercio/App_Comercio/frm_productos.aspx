<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_productos.aspx.cs" Inherits="App_Comercio.frm_productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link href="estilos.css" rel="stylesheet"  type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="validationSummary" class="mb-3 container">
            <center>
                <h3>Formulario de registro de productos</h3>
                <br />
                <asp:TextBox  type="text" class="tb form-control" ID="txt_codigo" runat="server" placeholder="Código *" required="True"></asp:TextBox>
                <asp:TextBox type="text" class="tb form-control" ID="txt_nombre" runat="server" placeholder="Nombre *"></asp:TextBox>
                <asp:TextBox type="number" class="tb form-control" ID="txt_existencia" runat="server" placeholder="Existencia *"></asp:TextBox>
                <asp:TextBox type="text" class="tb form-control" ID="txt_valorcompra" runat="server" placeholder="Valor de compra *"></asp:TextBox>
                <asp:TextBox type="text" class="tb form-control" ID="txt_porcganancia" runat="server" placeholder="Porcentaje de ganancia* "></asp:TextBox>
                <asp:DropDownList class="tb form-control" ID="categoria" runat="server">
                    <asp:ListItem Value="0"> Alimentos </asp:ListItem>
                    <asp:ListItem Value="1"> Seguridad </asp:ListItem>
                    <asp:ListItem Value="2"> Aseo </asp:ListItem>
                    <asp:ListItem Value="2"> Electronicos </asp:ListItem>
                    <asp:ListItem Value="2"> Ferretería </asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox type="text" class="tb form-control" ID="txt_especificaciones" runat="server" placeholder="Especificaciones *"></asp:TextBox>
                <asp:DropDownList class="tb form-control" ID="estado" runat="server">
                    <asp:ListItem Value="0"> Disponible </asp:ListItem>
                    <asp:ListItem Value="1"> No disponible </asp:ListItem>
                    <asp:ListItem Value="2"> S </asp:ListItem>
                </asp:DropDownList>
                <asp:Button class="btn btn-outline-success" ID="btn_registrar_producto" runat="server" 
                    Text="Registrar" OnClick="btn_registrar1_Click" />
                <asp:Button class="btn btn-outline-primary" ID="btn_consultar_producto" runat="server" Text="Consultar" OnClick="btn_consultar1_Click" />
              <asp:Button class="btn btn-outline-danger" ID="btn_limpiar_producto" runat="server" Text="Limpiar" OnClick="btn_limpiar1_Click" />
                <br />
                <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
                <asp:Label ID="lbl_user" runat="server" Text="1"></asp:Label>
                <br />  
                <asp:HyperLink id="hyperlink1" NavigateUrl="frm_usuarios.aspx" Text="Ir a usuarios" runat="server"/>  
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
