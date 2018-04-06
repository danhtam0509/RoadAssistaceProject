<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="ReportAdmin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .pad-top {
            padding-top: 20px;
        }

        img {
            height: 180px;
        }

        td img {
            height: 30px;
        }

        table {
            margin: 30px 20px;
        }

        td:last-child {
            max-width: 300px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="text-center pad-top"> 
            <h1> Report <img alt="avatar" src="Images/User_Avatar.png" /></h1>
        </div>

        <table class="table table-striped">
          <thead>
            <tr>
              <th scope="col">No</th>
              <th scope="col">User</th>
              <th scope="col">Service</th>
              <th scope="col">Date</th>
              <th scope="col">Payment</th>

            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">4</th>
              <td> User 1 </td>
              <td> Refuel + Tow to Garage </td>
              <td> 2018-04-01 00:19:25 </td>
              <td> $100 </td>
            </tr>


            <tr>
              <th scope="row">3</th>
              <td> User 2 </td>
              <td> Locked Out + Diagnostic </td>
              <td> 2018-04-20 00:15:12 </td>
              <td>  $40 </td>
            </tr>

            <tr>
              <th scope="row">4</th>
              <td> User 3 </td>
              <td> Refuel + Tow to Garage </td>
              <td> 2018-04-01 00:19:25 </td>
              <td> $100 </td>
            </tr>

             <tr>
              <th scope="row">4</th>
              <td> User 4 </td>
              <td> Refuel + Tow to Garage </td>
              <td> 2018-04-01 00:19:25 </td>
              <td> $100 </td>
            </tr>

          </tbody>
        </table>
    </div>
</asp:Content>

