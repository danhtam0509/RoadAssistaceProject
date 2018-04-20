using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String session_string = Session["Username"] as string;
        if (!String.IsNullOrEmpty(session_string))
        {
            Response.Redirect("~/Home.aspx");
        }
    }

    protected void Cancel(object sender, EventArgs e)
    {
        // Redirect back to the Home Page
        Response.Redirect("~/Home.aspx");
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        var userName = txtUserName.Text;
        var firstName = txtFirstName.Text;
        var lastName = txtLastName.Text;
        var address = txtAddress.Text;
        var email = txtEmail.Text;
        var password = txtPassword.Text;
        var phone = txtPhone.Text;
        var date = txtDoB.Text;
        var gender = rdMale.Checked == true ? 0 : 1;
        var insurance = txtInsurance.Text;
        var license = txtLicense.Text;
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            string checkUser = "select username, password from Customer where username='" + userName + "'";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            SqlDataReader myReader = comd.ExecuteReader();
            if (myReader.Read() != false)
            {
                Response.Write(@"<script language='javascript'>alert('Account already exists.')</script>");
            }
            else
            {
                SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn2.Open();
                string createAccount = "INSERT INTO Customer(Username, FirstName, LastName, Address, Email, Password, Phone, DoB, Gender, Insurance, License) VALUES('"
                + userName + "', '" + firstName + "', '" + lastName + "', '" + address + "', '" + email + "', '" + password + "',  '" + phone + "', '" + date + "', '" + gender + "', '" + insurance + "', '" + license + "')";
                SqlCommand comd2 = new SqlCommand(createAccount, conn2);
                comd2.ExecuteNonQuery();
                FormsAuthentication.RedirectFromLoginPage(userName, true);
                Response.Redirect("~/AuthenticatedPages/CreateAccountSuccess.aspx");
                conn2.Close();
            }
            conn.Close();
        }

    }
}