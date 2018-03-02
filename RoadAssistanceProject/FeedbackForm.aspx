<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title> Feedback Form Page </title> 
        <style>
            .container1 {
                padding-right: 20%;
                padding-left: 20%;
                margin-right: auto;
                margin-left: auto;
                padding-top: 20px;
            }
            .row1{
                padding-left: 20%;
            }
	    #contact {
                background: #333333;
                color: #f4f4f4;
                padding-bottom: 10px;
                padding-top: 20px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container1">
              <h2>Feedback Form</h2>
              <p>Feel free to shout us by feeling the feeback form or visiting our social network sites like Fackebook,Whatsapp,Twitter.</p>
              <div class="row1">
                <div class="col-md-8 col-md-offset-2">
                  <form class="form-horizontal">
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
						<asp:TextBox ID="txtComment" class="form-control" runat="server" TextMode="MultiLine" Height="100px" ></asp:TextBox>
                    </div>
                    <button type="submit" class="btn btn-default">Send Message</button>
                  </form>
                </div>
              </div>
            </div>
        </div>
</section>
</asp:Content>

