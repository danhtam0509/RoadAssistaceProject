<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .container {
            padding-bottom: 50px;
            margin: 0 auto;
        }
        .max-width-center {
            max-width: 35%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container max-width-center pad-top">       
        <h1 class="text-center"> Sign Up</h1>
        <!-- Alert Error --> 
        <div id="AlertFlash" class="alert alert-danger" runat="server" visible="false">
                <asp:Label runat="server" ID="StatusLabel"></asp:Label>
        </div>
        <!--Profile Picture-->
        <div class="form-group">
            <label for="FileUpLoadControl" class="control-label"><b>Profile Picture:</b></label>
            <div>
                <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="img-thumbnail"></asp:FileUpload>
            </div>
        </div>
        <!--User Name-->
        <div class="form-group">
            <label for="txtUserName" class="control-label"><b>User Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtUserName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--First Name-->
        <div class="form-group">
            <label for="txtFirstName" class="control-label"><b>First Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtFirstName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Last Name-->
        <div class="form-group">
            <label for="txtLastName" class="control-label"><b>Last Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtLastName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!-- Address -->
        <div class="form-group">
            <label for="txtAddress" class="control-label"><b> Address:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtAddress"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Email-->
        <div class="form-group">
            <label for="txtEmail" class="control-label"><b>Email:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtEmail" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="txtPassword" class="control-label"><b>Password:</b></label>
            <div>
                <asp:TextBox TextMode="Password" Width="400px" runat="server" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Terms of Services and Email receive agreement-->
        <asp:CheckBox  runat="server" Text="I agree with the terms of service" TextAlign="Right"></asp:CheckBox><br>
        <asp:CheckBox  runat="server" Text="I agree to receive email regarding promotions and offers" TextAlign="Right"></asp:CheckBox><br>
        <!--Button Area-->
        <asp:Button runat="server" Text="Create Account" CssClass="btn btn-primary" ID="btnCreate" OnClick="btnCreate_Click"></asp:Button>
        <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="Cancel" CausesValidation="false"></asp:Button>

    </div>
</asp:Content>

