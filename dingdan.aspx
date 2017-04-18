<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dingdan.aspx.cs" Inherits="dingdan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" width:99%; margin-top:50px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ddid" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="1315px">
        <Columns>
            <asp:BoundField DataField="ddid" HeaderText="订单编号" ReadOnly="True" SortExpression="ddid" />
            <asp:BoundField DataField="cpmc" HeaderText="商品名称" SortExpression="cpmc" />
            <asp:BoundField DataField="gmsl" HeaderText="购买数量" SortExpression="gmsl" />
            <asp:BoundField DataField="gmsj" HeaderText="购买时间" SortExpression="gmsj" />
            <asp:BoundField DataField="dizhi" HeaderText="收货地址" SortExpression="dizhi" />
            <asp:BoundField DataField="phone" HeaderText="手机号码" SortExpression="phone" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:data %>" SelectCommand="SELECT * FROM [dingdan] where zhid=@zhid">
        <SelectParameters>
            <asp:SessionParameter Name="zhid" SessionField="zhid" />
        </SelectParameters>
    </asp:SqlDataSource></div>
</asp:Content>

