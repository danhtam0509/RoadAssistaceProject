<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="ActivityLog.aspx.cs" Inherits="ActivityLog" %>

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
            <h1> User Activity Log <img alt="avatar" src="Images/User_Avatar.png" /></h1>
        </div>

        <table class="table table-striped">
          <thead>
            <tr>
              <th scope="col">No</th>
              <th scope="col">Date</th>
              <th scope="col">Action</th>
              <th scope="col">Type</th>
              <th scope="col">Description</th>

            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">4</th>
              <td>2018-04-01 00:19:25 </td>
              <td>Update Profile Picture </td>
              <td>Profile</td>
              <td> Profile Picture has been changed to <img src="Images/User_Avatar.png" /> </td>

            </tr>


            <tr>
              <th scope="row">3</th>
              <td>2018-03-28 20:19:16</td>
              <td>Register a service</td>
              <td>Service </td>
              <td>You has successfully registered "Diagnostic" Service </td>

            </tr>
            <tr>
              <th scope="row">2</th>
              <td>2017-12-09 15:37:28</td>
              <td> Submit a Feedback Form</td>
               <td>Feedback Form </td>
              <td> You has sent a Feedback Form </td>
            </tr>

              <tr>
              <th scope="row">1</th>
              <td>###### ####</td>
              <td> These are just examples </td>
               <td>##### </td>
              <td> This page will actually read data from database and automatically insert rows based on number of recorded actions </td>
            </tr>
          </tbody>
        </table>
    </div>


</asp:Content>

