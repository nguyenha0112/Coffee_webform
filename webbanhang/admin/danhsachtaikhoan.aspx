<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="danhsachtaikhoan.aspx.cs" Inherits="webbanhang.admin.danhsachtaikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%">
        Tai Khoan
        <asp:TextBox ID="Txttaikhoan" runat="server"></asp:TextBox>
        MATKHAU<asp:TextBox ID="Txtmatkhau" runat="server"></asp:TextBox>
        <br />
        LOAITAIKHOAN
        <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem>admin</asp:ListItem>
            <asp:ListItem>user</asp:ListItem>
        </asp:DropDownList>
        SDT
        <asp:TextBox ID="Txtsdt" runat="server"></asp:TextBox>
        <br />
        <asp:Button CssClass="button_account" ID="Button1" runat="server" Text="Thêm Taì Khoản" OnClick="Button1_Click" />
        <asp:Label ID="Label2" runat="server" BorderColor="Red" ForeColor="Red"></asp:Label>
        <asp:GridView CssClass="giohang" ID="GridView1" runat="server" AutoGenerateColumns="False" Height="224px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TAIKHOAN" HeaderText="Tài Khoản" />
                <asp:BoundField DataField="MATKHAU" HeaderText="Mật Khẩu" />
                <asp:BoundField DataField="LOAITAIKHOAN" HeaderText="Loại Tài Khoản" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" />
                <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
