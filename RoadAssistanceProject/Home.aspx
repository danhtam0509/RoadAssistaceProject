<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title> Home Page</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Banner 
        <section id="banner">
            <div class="inner">
                <h1> Road Assistance: <span> Your Companion on all roads + Driving without <br />
                 any apprehension and worriment </span></h1>
                <ul class="actions">
                    <li> <a href="#" class="button alt"> Get Started </a></li>
                </ul>
            </div>
        </section>
        -->
    <div class="row">
        <div class="col banner"> 
            <div class="inner"> 
                <h1> Road Assistance: </h1> 
                <br /> 
                <p><i class="fa fa-check"></i> Your Companion on all roads  </p>
                <p><i class="fa fa-check"></i> Driving without any apprehension and worriment  </p>
                <p><i class="fa fa-check"></i> Expert in repairing and maintaining car </p>

                <a href="#" class="btn btn-info">Get Started</a>
            </div>    
        </div>
  </div>
</asp:Content>

