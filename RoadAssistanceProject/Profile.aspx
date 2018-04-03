<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
              <hr>
              <div class="row">     
                  <div class="col-md-3">
                    <div class="text-center">
                      <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                      <h6>Upload a different photo...</h6>
          
                      <input type="file" class="form-control">
                    </div>
                  </div>
                <div class="col-md-9 personal-info"> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Name:</td>
                        <td>John Doe</td>
                      </tr>                      
                      <tr>
                        <td>Date of Birth</td>
                        <td>01/24/1988</td>
                      </tr>                   
                      <tr>
                        <td>Gender</td>
                        <td>Male</td>
                      </tr>
                      <tr>
                        <td>Home Address</td>
                        <td>Toronto, ON</td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:johndoe@support.com">johndoe@support.com</a></td>                      
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)</td>                           
                      </tr>                     
                    </tbody>
                  </table>               
                    <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" Text="Edit" OnClick="btnEdit_Click"/>
                    <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary" Text="Delete"/>
                </div>
              </div>
            </div>  

</asp:Content>

