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
        <!--Profile Picture-->
        <div class="form-group">
            <label for="FileUpLoadControl" class="control-label"><b>Profile Picture:</b></label>
            <div>
                <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="img-thumbnail"></asp:FileUpload>
            </div>
        </div>
        <!--User Name-->
        <div class="form-group">
            <label for="UserName" class="control-label"><b>User Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="UserName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="UserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--First Name-->
        <div class="form-group">
            <label for="FirstName" class="control-label"><b>First Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="FirstName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="FirstName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Last Name-->
        <div class="form-group">
            <label for="LastName" class="control-label"><b>Last Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="LastName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="LastName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!-- Address -->
        <div class="form-group">
            <label for="Address" class="control-label"><b> Address:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Email-->
        <div class="form-group">
            <label for="Email" class="control-label"><b>Email:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Email" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="Password" class="control-label"><b>Password:</b></label>
            <div>
                <asp:TextBox TextMode="Password" Width="400px" runat="server" CssClass="form-control" ID="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
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

