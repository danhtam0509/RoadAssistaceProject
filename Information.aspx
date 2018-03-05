<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Information.aspx.cs" Inherits="Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Information Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #e5f0f0;
        }
              footer{
            background-color: #68768b;
            position: absolute;
            bottom: auto;
            width: 100%;
        }
      
        .fa   {
            padding: 20px;
            font-size: 30px;
            width: 70px;
            height: 70px;
            text-align: center;
            text-decoration: none;
            margin:0 auto;
            }

       .fa:hover {
                opacity: 0.7;
            }

       .fa-facebook {
              background: #3B5998;
              color: white;
            }
       .fa-instagram {
              background: #125688;
              color: white;
            }
       .fa-youtube {
              background: #bb0000;
              color: white;
            }
    </style>
    </style>
</head>

<body>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <a class="navbar-brand"><img src="images/Logo.JPG"  height="30" width="30"/></a>
    </div>
    <ul class="nav navbar-nav" >
      <li><a href="#">Home</a></li>
      <li class = "active"><a href="Information.aspx">Services</a></li>
      <li><a href="About_Us.aspx">About Us</a></li>
      <li><a href="#">FeedBack</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
     <ul class="nav navbar-nav pull-right">
         <li><a href="#">Sign in</a></li>
         <li><a href="#">Sign up</a></li>
     </ul>
  </div>
</nav>
    <div class ="container text-center">
        <div class ="jumbotron" style="background:#3d8af7">
            <h1><b>Services</b></h1>
        </div>
                    <p><b>With Roadside Assistance, no matter what issue you 
               come across driving on the road, our team of highly trained 
               mechanics are more than willingly to come to you and provide 
               you with the highest grade of professionalism and experience, 
               whether your engine has died or you simply need a refuel, 
               we are here to help and make sure you get on your way as 
               fast and efficiently as possible</b></p>
    </div>
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
    <br />
    <br />
       <footer>
        <h4>Stay connected:</h4>
        <a href="http://www.facebook.com" class="fa fa-facebook"></a>
        <a href="http://www.instagram.com" class="fa fa-instagram"></a>
        <a href="http://www.youtube.com" class="fa fa-youtube"></a>
            <center><p>@2018 RoadSide Assistance. All rights reserved</p></center>
    </footer>
</body>
</html>
