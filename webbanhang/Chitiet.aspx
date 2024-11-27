<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitiet.aspx.cs" Inherits="webbanhang.Chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>CHI TIẾT SẢN PHẨM</h2>
    <asp:DataList ID="DataList1" runat="server" Width="417px">
         <ItemTemplate>
     <table style="width:100%;">
         <tr>
           <td rowspan="4">
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/"+Eval("HINHANH") %>' />
             </td>
             <td>
                 Tên:<asp:Label ID="Label1" runat="server" Text='<%# Eval("TENHANG") %>'></asp:Label>
             </td>
         </tr>
         <tr>
             <td>Mô tả:
                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("GHICHU") %>'></asp:Label>
             </td>
         </tr>
         <tr>
             <td>Đơn giá:<asp:Label ID="Label3" runat="server" Text='<%# Eval("DONGIA") %>'></asp:Label>
             </td>
         </tr>
         <tr>
             <td>Số lượng:
                 <asp:TextBox ID="TXTSoLuong" runat="server"></asp:TextBox>
                 <asp:Button ID="btMua" runat="server" Text="Mua" CommandArgument='<%# Eval("MAHANG") %>' OnClick="btMua_Click" />
                 <a href="giohang.aspx">Giỏ hàng</a>
             </td>
         </tr>
     </table>
 </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="lbThongbao" runat="server" Text=""></asp:Label>
</asp:Content>
