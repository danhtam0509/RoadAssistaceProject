<%@ Page Title ="Booking" Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.master" CodeFile="Booking.aspx.cs" Inherits="Booking" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <div id="Header">
        <br />
        <h3><center>Please fill out the Form</center></h3>
        <br />
    </div>

    <div id="Person_table">
    <h3><center>Your Info</center></h3>
        <table style="width:90%; padding: 100px; text-align:right; margin: 0 auto; background-color:cornflowerblue">
            <tr>
                <td>
                    <h4 style="margin: 60px; margin-bottom: 0">First Name: <input type="text" style="width:50%"/></h4>
                </td>
                <td>
                    <h4 style="margin: 60px; margin-bottom: 0">Last Name: <input type="text" style="width:50%"/></h4>
                   
                </td>
            </tr>
            <tr>
                <td><h4 style="margin: 60px; margin-bottom:0">Address: <input type="text" style="width:50%"/></h4>
                    
                </td>
                <td>
                    <h4 style="margin: 60px; margin-bottom: 50px">Insurance Number: <input type="text" style="width:50%"/></h4>
                </td>
            </tr>
            <br />
            <br />
            <tr>
                <td><h4 style="margin-left:0 auto">License Number:  <input type="text" style="width:50%"/></h4>
                </td>
                <td style="text-align:center"><h4 style="margin-left:0 auto; text-align:center;">Closest Intersection: </h4>
                    <input type="text" style="width:45%"/> <h5> and </h5> <input type="text" style="width:45%"/><br /><br />
                </td>
            </tr>
        </table>
    </div>
    <br /><br />
    <h3><center>Your Vehicle's Info</center></h3>
    <div id="Car_table">
        <table style="width:75%; padding:100px; text-align:right; margin: 0 auto; background-color: cornflowerblue">
            <tr>
                <td><h4 style="margin: 60px; margin-bottom: 0">Make: <input type="text" style="width:50%"/></h4><br />
                </td>
                <td style="text-align:left"><h4 style="margin:60px; margin-bottom: 0">Model: <input type="text" style="width:50%"/></h4><br />
                </td>
            </tr>
            <tr>
                <td><h4 style="margin:60px; margin-bottom:0 ">Plate Number: <input type="text" style="width:50%"/></h4><br /><br />
                </td>
                <td style="text-align:left"><h4 style="margin:60px; margin-bottom:0">Engine Size: <input type="text" style="width:35%"/></h4><br /><br /></td>
            </tr>
        </table>
        <br />
        <center><a href="" class = "btn btn-primary">Submit</a> <a style="margin: 0 auto" href="/Services.aspx" class="btn btn-primary">Cancel</a></center>
    </div>
 </asp:Content>
