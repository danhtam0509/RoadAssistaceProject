<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="AddCar" %>

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
        <h1 class="text-center"> Add Your Vehicle</h1>
        <!--User Name-->
        <div class="form-group">
            <label for="CarName" class="control-label"><b>Car's Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="CarName"></asp:TextBox>
            </div>
        </div>
        <!--Email-->
        <div class="form-group">
            <label for="Make" class="control-label"><b>Make: </b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Make" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Make" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="Model" class="control-label"><b>Model:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Model"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Model" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
         <div class="form-group">
            <label for="Year" class="control-label"><b>Year:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Year"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Year" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
         <div class="form-group">
            <label for="Miles" class="control-label"><b>Mileage:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Miles"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Miles" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
         <div class="form-group">
            <label for="Esize" class="control-label"><b>Engine Size:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="Esize"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="Esize" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Button Area-->
        <asp:Button runat="server" Text="Add Car" CssClass="btn btn-primary" OnClick="btnCreate_Click" ID="btnCreate"></asp:Button>
        <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="Cancel" CausesValidation="false"></asp:Button>

    </div>
</asp:Content>

