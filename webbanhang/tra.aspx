<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tra.aspx.cs" Inherits="webbanhang.tra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/Home.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section>
    <h2>Trà</h2>
    <div class="section_home">

        <asp:DataList CssClass="section_home" ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <div class="home_item">
                    <img src='<%# "img/"+Eval("HINHANH") %>' alt="">
                    <h5>'<%# Eval("TENHANG") %>'</h5>
                    <p>'<%# Eval("DONGIA") %>'</p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Chitiet.aspx?mahang="+ Eval("MAHANG") %>'>Chitiet</asp:HyperLink>
                </div>

            </ItemTemplate>
        </asp:DataList>
    </div>
</section>
</asp:Content>
