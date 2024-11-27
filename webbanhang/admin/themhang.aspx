<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="themhang.aspx.cs" Inherits="webbanhang.admin.themhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%">
        <div style="margin: 16px 0px;" class="nhaphang">
            Ten Hang 
            <asp:TextBox ID="Txttenhang" runat="server"></asp:TextBox>
            Loai Hang<asp:TextBox ID="Txtloaihang" runat="server"></asp:TextBox>
            <br />
            So Luong 
            <asp:TextBox ID="Txtsoluong" runat="server"></asp:TextBox>
            Don Gia
            <asp:TextBox ID="Txtdongia" runat="server"></asp:TextBox>
            <br />
            Ghi Chu 
            <asp:TextBox ID="Txtghichu" runat="server"> </asp:TextBox>
            <asp:FileUpload ID="FileUpload1" runat="server" />\
            <br />
            <asp:Button CssClass="button_account" ID="Button1" runat="server" Text="Thêm Hàng" OnClick="Button1_Click" />
        </div>
        <asp:GridView CssClass="giohang" ID="GridView1" runat="server" AutoGenerateColumns="False" Height="224px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MAHANG" HeaderText="Mã Hàng " />
                <asp:BoundField DataField="TENHANG" HeaderText="Tên Hàng " />
                <asp:BoundField DataField="SOLUONG" HeaderText="Số " />
                <asp:BoundField DataField="DONGIA" HeaderText="Đơn " />
                <asp:BoundField DataField="HINHANH" HeaderText="Hình Ảnh" SortExpression="HINHANH" />
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
