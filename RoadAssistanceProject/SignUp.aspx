<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .container {
            padding-bottom: 50px;
            margin: 0 auto;
            padding-top: 30px;
        }
        .max-width-center {
            max-width: 35%;
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
        <!--Profile Picture-->
        <div class="form-group">
            <label for="FileUpLoadControl" class="control-label"><b>Profile Picture:</b></label>
            <div>
                <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="img-thumbnail"></asp:FileUpload>
            </div>
        </div>
        <!--First Name-->
        <div class="form-group">
            <label for="FirstName" class="control-label"><b>First Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="FirstName"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Last Name-->
        <div class="form-group">
            <label for="LastName" class="control-label"><b>Last Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="LastName"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="LastName"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Email-->
        <div class="form-group">
            <label for="Email" class="control-label"><b>Email:</b></label>
            <div>
                <asp:TextBox TextMode="Email" Width="400px" runat="server" CssClass="form-control" ID="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Email"></asp:RequiredFieldValidator>
            </div>
        </div>
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
        <!--Terms of Services and Email receive agreement-->
        <asp:CheckBox ID="TermOfServices" runat="server" Text="I agree with the" TextAlign="Right"></asp:CheckBox><a href="TermOfService.txt"> terms of service</a><br>
        <!--Required agreement on terms of service validator-->
        <asp:CustomValidator ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="You must agree with Terms of Services" OnServerValidate="ValidateCheckBox"></asp:CustomValidator>    
        <!--Email and promos notifications-->
        <br>
        <asp:CheckBox  runat="server" Text="I agree to receive email regarding promotions and offers" TextAlign="Right"></asp:CheckBox><br>
        <!--Button Area-->
        <asp:Button runat="server" Text="Create Account" CssClass="btn btn-primary" OnClick="Submit"></asp:Button>
        <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="Cancel" CausesValidation="false"></asp:Button>

    </div>
</asp:Content>

