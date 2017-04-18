<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gouxuan.aspx.cs" Inherits="gouxuan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

.xcbox{ width:20%; height:240px; float:left}
.xcleft{width:100%; height:200px; margin-top:10px; margin-left:20px}
.xcright{width:100%; height:40px; text-align:center ; line-height:10px; font-size:10px}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:99%; margin-top:50px;">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
</asp:Content>

