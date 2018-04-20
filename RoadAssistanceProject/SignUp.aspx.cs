using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for Identity and OWIN Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Cancel(object sender, EventArgs e)
    {
        // Redirect back to the Home Page
        Response.Redirect("~/Home.aspx");
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        // create new userStore and userManager objects
        var userStore = new UserStore<IdentityUser>();
        var userManager = new UserManager<IdentityUser>(userStore);

        // create a new user object 
        var user = new IdentityUser()
        {
            UserName = txtUserName.Text,
            Email = txtEmail.Text
        };

        // create a new user in the db and store the results
        IdentityResult result = userManager.Create(user, txtPassword.Text);

        // check if successfully registered
        if (result.Succeeded)
        {
            // authenticate and login our new user
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            // sign in the user
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            // Redirect the user
            Response.Redirect("~/AuthenticatedPages/CreateAccountSuccess.aspx");
        }
        else
        {
            // display error in the AlertFlash
            StatusLabel.Text = result.Errors.FirstOrDefault();
            AlertFlash.Visible = true;
        }
    }
}