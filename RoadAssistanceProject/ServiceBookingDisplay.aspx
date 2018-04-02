<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="ServiceBookingDisplay.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
  <h2>Service Booking Display</h2>
  <table class="table">
    <thead>
      <tr>
        <th>Type of Service</th>
        <th>Customer's name</th>
        <th>Start Date</th>
        <th>Finished Date</th>
        <th>Cost of Service</th>
        <th>Total Cost</th>
        <th>Status</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Towing</td>
        <td>John Doe</td>
        <td>25-01-2018</td>
        <td>27-01-2018</td>  
        <td>$250</td>
        <td>$260</td>
        <td>Done</td>
        <td><asp:Button runat="server" Text="Details" CssClass="btn btn-primary"></asp:Button></td>
        <td><asp:Button runat="server" Text="Cancel" CssClass="btn btn-outline-primary"></asp:Button></td>
      </tr>
      <tr>
        <td>Gas refilling</td>
        <td>Gassy Pal</td>
        <td>25-01-2019</td>
        <td>27-01-2019</td>  
        <td>$50</td>
        <td>$60</td>
        <td>On Process</td>
        <td><asp:Button runat="server" Text="Details" CssClass="btn btn-primary"></asp:Button></td>
        <td><asp:Button runat="server" Text="Cancel" CssClass="btn btn-outline-primary"></asp:Button></td>
      </tr>
    </tbody>
  </table>
</div>
</asp:Content>

