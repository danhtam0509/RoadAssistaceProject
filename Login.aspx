<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/LoginStyleSheet.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Road Assistance-->
    <div id="ra">
        <h1>Road Assistance</h1>
    </div>

    <div class="container">
        <!--Username-->
        <div class="form-group" id="dUsr">
            <label for="usr" class="control-label col-sm-5">Username: </label>
            <input runat="server" type="text" class="form-control col-sm-2" placeholder="Email Address" id="usr">
        </div>
        <!--Password-->
        <div class="form-group" id="dPass">
            <label for="pass" class="control-label col-sm-5">Password: </label>
            <input runat="server" type="password" class="form-control col-sm-2" placeholder="Password" id="pass">
        </div>
        <!--Submit-->
        <div class="form-group" id="dSm">
            <label for="lblSm" class="control-label col-sm-5"></label>
            <button id="lblSm" type="submit" class="btn btn-primary col-sm-2">Submit</button>
        </div>
        <!--Forget Password-->
        <div class="form-group" id="dFPass">
            <label for="lblFPass" class="control-label col-sm-5"></label>
            <a id="lblFPass" class="col-sm-6" href="#">Forget Password</a>
        </div>
        <!--Create new user-->
        <div class="form-group" id="dCNUsr">
            <label for="lblCNUsr" class="control-label col-sm-5"></label>
            <a id="lblCNUsr" class="col-sm-6" href="#">Create new user</a>
        </div>
    </div>
</asp:Content>

