<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title> Feedback Form Page </title>
        <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" /> --> 
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <link href="https://fonts.googleapis.com/css?family=Oswald:700|Patua+One|Roboto+Condensed:700" rel="stylesheet"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        
        <style>
        .container {           
            padding-right: 20%;
            padding-left: 20%;
            margin-right: auto;
            margin-left: auto;
        }

        .auto-style1 {
            width: 524px;
        }
         
        body {
            width: 100%;
            height: 100%;
            font-family: 'Roboto Condensed', sans-serif;
        }

        h1, h2, h3 {
            margin: 0 0 35px 0;
            font-family: 'Patua One', cursive;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        p {
            margin: 0 0 25px;
            font-size: 18px;
            line-height: 1.6em;
        }

        a {
            color: #26a5d3;
        }

        a:hover, a:focus {
            text-decoration: none;
            color: #26a5d3;
        }

        #contact {
            background: #333333;
            color: #f4f4f4;
            padding-bottom: 80px;
            padding-top: 20px;
        }

        textarea.form-control {
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container">
              <h2>Feedback Form</h2>
              <p>Feel free to shout us by feeling the feeback form or visiting our social network sites like Fackebook,Whatsapp,Twitter.</p>
              <div class="row">
                <div class="col-md-8 col-md-offset-2">
                  <form class="form-horizontal" runat="server">
                    <div class="form-group">
						<label for="form_name">Please enter your full name</label>
						<asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Full name is required" ForeColor="Red"></asp:RequiredFieldValidator>
					
                    </div>
                    <div class="form-group">
						<label for="email">Please enter your e-mail</label>
						<asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>
					<div class="form-group">
						<label for="choices">Are you satisfied with the service today?</label>
                        <div>
						<asp:CheckBox ID="chkYes" runat="server" Text="Yes, I'm satisfied" />
						<asp:CheckBox ID="chkNo" runat="server" Text="No, I'm not satisfied" />
						    <br />
						<asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="You have to choose one option" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
					    </div>
                    </div>
                    <div class="form-group ">
						<label for="choices">Add comments about the support that you received (optional) ?</label>
						<p class="auto-style1"><asp:TextBox ID="txtComment" class="form-control" runat="server" Height="133px" TextMode="MultiLine" Width="440px"></asp:TextBox>
                        </p>
                    </div>
                    <button type="submit" class="btn btn-default">Send Message</button>
                  </form>

                  <hr>
                    
                </div>
              </div>
            </div>
        </div>
  </section>
</asp:Content>

