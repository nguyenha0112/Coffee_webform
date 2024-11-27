<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="danhsachdonhang.aspx.cs" Inherits="webbanhang.admin.danhsachdonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="width:100%">
            <asp:GridView CssClass="giohang" ID="GridView1" runat="server" AutoGenerateColumns="False" Height="224px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
    <Columns >
         <asp:BoundField DataField="TAIKHOAN" HeaderText="Tài Khoản" />
        <asp:BoundField DataField="MAHANG" HeaderText="Mã Hàng " />
        <asp:BoundField DataField="TENHANG" HeaderText="Tên Hàng " />
        <asp:BoundField DataField="SOLUONG" HeaderText="Số Lượng" />
        <asp:BoundField DataField="DONGIA" HeaderText="Đơn Giá " />
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
