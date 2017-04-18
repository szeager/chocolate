<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shouye.aspx.cs" Inherits="shouye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/zzsc.css">
<script src="js/jquery1.42.min.js" type="text/javascript"></script>
<script src="js/jquery.superslide.2.1.1.js" type="text/javascript"></script>

    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div class="chinaz">
    <ul class="51buypic">
        <li><a href="" target="_blank"><img src="images/t1.png" /></a></li>
        <li><a href="" target="_blank"><img src="images/t2.png" /></a></li>
        <li><a href="" target="_blank"><img src="images/t3.png" /></a></li>
     
    </ul>
    <a class="prev" href="javascript:void(0)"></a>
    <a class="next" href="javascript:void(0)"></a>
    <div class="num">
    	<ul></ul>
    </div>
</div>
    <div style="margin-left:8%">


        <table class="auto-style3">
            <tr>
                <td><a href="Q1.aspx"><img src="images/q1.jpg" /></a></td>
                <td><a href="Q2.aspx"><img src="images/q2.jpg" /></a></td>
                <td><a href="Q3.aspx"><img src="images/q3.jpg" /></a></td>
                <td><a href="Q4.aspx"><img src="images/q4.jpg" /></a></td>
            </tr>
        </table>


    </div>
</div>
<script>
    /*鼠标移过，左右按钮显示*/
    $(".chinaz").hover(function () {
        $(this).find(".prev,.next").fadeTo("show", 0.1);
    }, function () {
        $(this).find(".prev,.next").hide();
    })
    /*鼠标移过某个按钮 高亮显示*/
    $(".prev,.next").hover(function () {
        $(this).fadeTo("show", 0.7);
    }, function () {
        $(this).fadeTo("show", 0.1);
    })
    $(".chinaz").slide({ titCell: ".num ul", mainCell: ".51buypic", effect: "fold", autoPlay: true, delayTime: 700, autoPage: true });
</script>


</asp:Content>

