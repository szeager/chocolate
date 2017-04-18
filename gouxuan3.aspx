<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gouxuan3.aspx.cs" Inherits="gouxuan3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
            <asp:Panel ID="Panel1" runat="server"><table class="auto-style3">
        <tr>
            <td>商品名称：</td>
            <td>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>商品单价：</td>
            <td>
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>购买数量：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>收货地址：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>手机号码：</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="11"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="下一步" />
            </td>
        </tr>
    </table>
                </asp:Panel>
    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
    <asp:Button ID="Button2" runat="server" Text="确定" OnClick="Button2_Click" Visible="False" />
</asp:Content>

