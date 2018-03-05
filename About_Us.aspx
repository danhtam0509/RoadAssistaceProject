<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About_Us.aspx.cs" Inherits="About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About_Us Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
</head>
<body>
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <a class="navbar-brand"><img src="images/Logo.JPG"  height="30" width="30"/></a>
    </div>
    <ul class="nav navbar-nav" >
      <li><a href="#">Home</a></li>
      <li><a href="Information.aspx">Services</a></li>
      <li class = "active"><a href="About_Us.aspx">About Us</a></li>
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
            <h1><b>About Us</b></h1>
        </div>
        <h3>COMP 2139</h3>
        <h4>Web Application Development</h4>
        <h4>March 23 2018</h4>
    </div>
    
    
    <ul style="width:80%; margin: 0 auto; text-align:center; list-style-type:none" >
            <li style="margin: 20px"> 
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_1">Anthony Caldwell</button>
                <div id="demo_1" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>I am a 21 year old student in my second year of a 3 year program studying computer programming and maintenance. I completed the 
                'Services' page and the 'About Us' page. I enjoy golfing and video games.</b>
                </div>
            </li>
            <li style="margin: 20px">
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_2">Hao Bui</button>
                <div id="demo_2" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>I am in the second year of 3 year Computer Programming program. I completed
                the feedback form page. In my free time, I like programming, listening to 
                music and football.</b>
                </div>
            </li>
            <li style="margin: 20px">
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_3">Quan Trung</button>
                <div id="demo_3" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>Im student at George Brown College. I make the login and login success confirm pages. 
                   I love playing video games and shrimp spring rolls.</b>
                </div>
            </li>
            <li style="margin: 20px">
                <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_4">Tam Dang</button>
                <div id="demo_4" class="collapse" style="width: 60%; text-align:center; margin:0 auto">
                <b>I’m second year student studying Computer Programming at GBC. 
                   I made the homepage. I enjoy playing badminton, soccer, 
                   volleyball and listening to music.</b>
                </div>
            </li>
    </ul>
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
