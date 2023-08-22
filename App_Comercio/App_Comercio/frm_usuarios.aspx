<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_usuarios.aspx.cs" Inherits="App_Comercio.frm_usuarios" %>

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
        <div class="mb-3 container">
            <center>
                <h3>Formulario de registro de usuarios</h3>
                <br />
                <asp:TextBox type="text" class="tb form-control" ID="txt_codigo" runat="server" placeholder="Código" required="True"></asp:TextBox>
                <asp:TextBox type="text" class="tb form-control" ID="txt_nombre" runat="server" placeholder="Nombre"></asp:TextBox>
                <asp:TextBox type="number" class="tb form-control" ID="txt_contacto" runat="server" placeholder="Contacto"></asp:TextBox>
                <asp:TextBox type="email" class="tb form-control" ID="txt_correo" runat="server" placeholder="Correo"></asp:TextBox>
                <asp:TextBox type="text" class="tb form-control" ID="txt_direccion" runat="server" placeholder="Dirección"></asp:TextBox>
                <asp:Button class="btn btn-outline-success" ID="btn_registrar" runat="server" Text="Registrar" OnClick="btn_registrar_Click" />
                
                <asp:Button class="btn btn-outline-primary" ID="btn_consultar" runat="server" Text="Consultar" OnClick="btn_consultar_Click" />
                <asp:Button class="btn btn-outline-danger" ID="btn_cancelar" runat="server" Text="Limpiar" OnClick="btn_cancelar_Click" />
                <br />  

                <asp:HyperLink id="hyperlink1" NavigateUrl="frm_productos.aspx" Text="Ir a productos" runat="server"/>  
                <br />
                <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
