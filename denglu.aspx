<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="denglu.aspx.cs" Inherits="denglu" %>

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
    <table class="auto-style3">
        <tr>
            <td >账号：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >密码：</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox5" runat="server"  TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td >
              <a href="xiugaimima.aspx"> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/xiugaimima.aspx" >修改密码</asp:HyperLink></a> 
            </td>
            <td>
              <a href="wangjimima.aspx"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wangjimima.aspx">找回密码</asp:HyperLink></a>  
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="Button2" runat="server" Text="登陆" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="取消" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

