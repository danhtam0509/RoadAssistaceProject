<%@ Page Title="Login" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .max-width-center {
            max-width: 30%;
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="text-center">
        <h1>Sign In</h1>
        <hr class="max-width-center" />
        <br />
    </div>
    <div class="container max-width-center">
        <!--Username-->
        <div class="form-group">
            <label for="usr" class="control-label"><b>Username:</b></label>
            <div class="">
                <input runat="server" type="text" class="form-control" placeholder="Email Address" id="usr">
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="pass" class="control-label"><b>Password:</b></label>
            <div class="">
                <input runat="server" type="password" class="form-control" placeholder="Password" id="pass">
            </div>
        </div>
        <!--Submit-->
        <div class="form-group">
            <label for="sm" class="control-label"></label>
            <div class="text-center">
                <input runat="server" type="submit" value="Submit" class="btn btn-primary">
            </div>
        </div>
        <div class="text-center">
            <!--Forget Password-->
            <a href="#">Forget Password</a><br>
            <!--Create new user-->
            <a href="#">Create new user</a><br>
        </div>
    </div>
</asp:Content>



