<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/LoginStyleSheet.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Road Assistance-->
    <div id="ra">
        <h1>Road Assistance</h1>
    </div>

    <ul style="width:80%; margin: 0 auto; text-align:center; list-style-type:none" >
            <li style="margin: 20px"> 
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_1">Anthony Caldwell</button>
                <div id="demo_1" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>I am a 21 year old student in my second year of a 3 year program studying computer programming and maintenance. I completed the 
                'Services' page and the 'About Us' page. I enjoy golfing and video games. </b>
                </div>
            </li>
            <li style="margin: 20px">
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_2">Hao Bui</button>
                <div id="demo_2" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>I am in the second year of 3 year Computer Programming program. I completed
                the feedback form page. In my free time, I like programming, listening to 
                music and football.</b>
                </div>
            </li>
            <li style="margin: 20px">
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_3">Quan Trung</button>
                <div id="demo_3" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>Im student at George Brown College. I make the login and login success confirm pages. 
                   I love playing video games and shrimp spring rolls.</b>
                </div>
            </li>
            <li style="margin: 20px">
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_4">Tam Dang</button>
                <div id="demo_4" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>I’m second year student studying Computer Programming at GBC. 
                   I made the homepage. I enjoy playing badminton, soccer, 
                   volleyball and listening to music.</b>
                </div>
            </li>
    </ul>
</asp:Content>