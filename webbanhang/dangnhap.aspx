<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="webbanhang.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">
    <link href="styles/dangnhap.css" rel="stylesheet" type="text/css" />
    <style>
        .label{
            color: red;
            font-weight:700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="account">
            <div class="create_account">
                <h3>Đăng Nhập</h3>
                <div>
                    Tài Khoản
                    <asp:TextBox CssClass="input" ID="Texttk" runat="server"  ></asp:TextBox>
                    Password
                    <asp:TextBox CssClass="input" ID="Textpass" runat="server" TextMode="Password"></asp:TextBox>

                </div>
                <div class="account_button">
                      <asp:Label CssClass="label" ID="Label1" runat="server" Text=""></asp:Label>
                    <asp:Button CssClass="button_account" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
                </div>
                <div class="account_text">
                    <p>Bạn Có Tài Khoản Chưa ?  
                        <asp:LinkButton CssClass="dangki" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Đăng Kí</asp:LinkButton></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
