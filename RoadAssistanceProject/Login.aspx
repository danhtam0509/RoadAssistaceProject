<%@ Page Title="Login" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/LoginStyleSheet.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="ra">
        <h1>Road Assistance</h1>
    </div>
    <div class="container">
        <!--Username-->
        <div class="form-group" id="dUsr">
            <label for="usr" class="control-label"><b>Username:</b></label>
            <div class="">
                <input runat="server" type="text" class="form-control" placeholder="Email Address" id="usr">
            </div>
        </div>
        <!--Password-->
        <div class="form-group" id="dPass">
            <label for="pass" class="control-label"><b>Password:</b></label>
            <div class="">
                <input runat="server" type="password" class="form-control" placeholder="Password" id="pass">
            </div>
        </div>
        <!--Submit-->
        <div class="form-group" id="dSm">
            <label for="sm" class="control-label"></label>
            <div class="">
                <input runat="server" type="submit" value="Submit" class="btn btn-default" id="sm">
            </div>
        </div>
        <div id="links">
            <!--Forget Password-->
            <a href="#">Forget Password</a><br>
            <!--Create new user-->
            <a href="#">Create new user</a><br>
        </div>
    </div>
</asp:Content>



