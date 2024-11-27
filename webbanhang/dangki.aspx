<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="webbanhang.dangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style>
        .va {
            color: red;
        }
        
    </style>
    <link href="styles/dangnhap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="account">
     
            <div class="create_account">
                
                <h3>Đăng Kí</h3>
                <div>
                    <p>
                        Tài Khoản    
                        <asp:RequiredFieldValidator CssClass="va" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không Được Để Trống" ControlToValidate="Texttk" BorderColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <asp:TextBox CssClass="input" ID="Texttk" runat="server"></asp:TextBox>
                    <p>
                        SDT
                      
                    </p>
                    <asp:TextBox CssClass="input" ID="Textsdt" runat="server"></asp:TextBox>
                    <p>
                        Password    
                        <asp:RequiredFieldValidator CssClass="va" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không Được Để Trống" ControlToValidate="textpass" BorderColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <asp:TextBox CssClass="input" ID="Textpass" runat="server" TextMode="Password"></asp:TextBox>
                    <p>
                        Nhập Lại Mật Khẩu    
                        <asp:CompareValidator CssClass="va" ID="CompareValidator1" runat="server" ErrorMessage="không trùng khớp mới mật khẩu" ControlToCompare="textpass" ControlToValidate="textpasscheck" BorderColor="Red"></asp:CompareValidator>
                    </p>
                    <asp:TextBox CssClass="input" ID="Textpasscheck" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="account_button">
                    <asp:Button CssClass="button_account" ID="Button1" runat="server" Text="Đăng Kí" OnClick="Button1_Click" />
                    <asp:Button CssClass="button_account" ID="Button2" runat="server" Text="Đăng Nhập" OnClick="Button2_Click"  />
                </div>

            </div>
        </div>

    </form>
</body>
</html>
