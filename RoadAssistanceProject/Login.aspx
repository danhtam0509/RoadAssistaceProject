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
            <label for="Username" class="control-label"><b>Username:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Username"></asp:RequiredFieldValidator>
                <asp:CustomValidator ForeColor="Red" runat="server" ErrorMessage="Username must be all letters and numbers and begin with a letter" Display="Dynamic" ControlToValidate="Username" OnServerValidate="username_Validate"></asp:CustomValidator>
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="Password" class="control-label"><b>Password:</b></label>
            <div>
                <asp:TextBox TextMode="Password" Width="400px" runat="server" CssClass="form-control" ID="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Password"></asp:RequiredFieldValidator>
                <asp:CustomValidator ForeColor="Red" runat="server" ErrorMessage="Password must be 8 to 16 characters long, start with a letter and contain at least one ! Or * and digit in it" Display="Dynamic" ControlToValidate="Password" OnServerValidate="password_Validate"></asp:CustomValidator>            
            </div>
        </div>
        <!--Submit-->
        <br>
        <asp:Button runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Submit"></asp:Button>
        <div class="text-center">
            <!--Forget Password-->
            <a href="#">Forget Password</a><br>
            <!--Create new user-->
            <a href="SignUp.aspx">Create new user</a><br>
        </div>
    </div>
</asp:Content>



