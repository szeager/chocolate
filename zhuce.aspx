<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 60%;
            text-align:center ;
            margin-left:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top:100px;" >
    <table class="auto-style3">
        <tr>
            <td>账号：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>手机号：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
            </td>
        </tr>
    </table></div>
</asp:Content>

