<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gouxuan2.aspx.cs" Inherits="gouxuan2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .box{width:50%; height:200px; text-align:center}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" width:99%">
        <div style=" width:70%; float:right; min-height:100px;">
            <asp:literal runat="server" id="literal1"></asp:literal>
        </div>
        <div style=" width:55%; float:right; margin-top:150px;">
            <asp:button runat="server" text=立即购买 OnClick="Unnamed1_Click" />

        </div>
    </div>
    
</asp:Content>

