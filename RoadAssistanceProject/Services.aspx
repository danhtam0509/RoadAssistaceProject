<%@ Page Title="Services" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/LoginStyleSheet.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Road Assistance-->
    <div id="ra">
        <h1>Road Assistance</h1>
    </div>
    <div class ="container text-center" style="background:#3d8af7">
            <h1><b>Services</b></h1>
        </div>
                    <p><b>With Roadside Assistance, no matter what issue you 
               come across driving on the road, our team of highly trained 
               mechanics are more than willingly to come to you and provide 
               you with the highest grade of professionalism and experience, 
               whether your engine has died or you simply need a refuel, 
               we are here to help and make sure you get on your way as 
               fast and efficiently as possible</b></p>

    <div class="container">
        <h3><b>Refuel</b></h3>
        <p>We’ve been there, your driving along and thinking “just one more mile, one more and i'll be there.” 
            But unfortunately, that doesn’t always happen and your stuck on the road with an empty tank. 
            With Roadside Assistance just tell us the make and model of your vehicle and 
            we will come to you with half or a full tank of gas to send you on your way.
        </p>
        <h4>Rate: $15 + 120¢/ltr</h4>
    </div>
    <div class="container">
        <h3><b>Diagnostic</b></h3>
        <p>Sometimes as drivers we don’t know what the problem is, just that there is a problem and our cars not 
            working. Which is why we have implemented an individual diagnostic service to allow drivers to call in 
            and find out what that sound or warning light means, and how it effects your vehicle.</p>
        <h4>Rate: $25/hr</h4>
    </div>
     <div class="container">
        <h3><b>Tire Change/Maintenance</b></h3>
        <p>Changing a Tire or repairing a popped wheel can be a simple and quick job that not everyone knows how 
            to do. By calling Roadside Assistance we will come to you fully equipped to change or repair a tire and 
            send you on your way as quick as possible.
        </p>
         <h4>Rate: $45</h4>
    </div>
     <div class="container">
        <h3><b>Locked out</b></h3>
        <p>When you lose track of your keys or leave them in the vehicle a technician will come by and safely open 
            your doors and provide access to the vehicle. </p>
         <h4>Rate: $35</h4>
    </div>
     <div class="container">
        <h3><b>Tow to Garage/House</b></h3>
        <p>When all else fails and your vehicle is immovable or some more serious equipment is required. We are
            more than happy to provide you and your vehicle with a lift to the closest garage or destination of your choice.</p>
         <h4>Rate: $10 + $2.00/km</h4>
    </div>
</asp:Content>

