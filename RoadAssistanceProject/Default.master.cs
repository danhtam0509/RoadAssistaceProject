using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        setActivePage();
    }

    public void setActivePage()
    {
        switch(Page.Title)
        {
            case "Home":
                Home.Attributes.Add("class", "nav-link active");
                break;
            case "Services": 
                Services.Attributes.Add("class", "nav-link active");
                break;
            case "Feedback Form Page":
                Feedback.Attributes.Add("class", "nav-link active");
                break;
            case "About Us":
                AboutUs.Attributes.Add("class", "nav-link active");
                break;
            case "Sign Up":
                SignUp.Attributes.Add("class", "nav-link active");
                break;
            case "Login":
                LogIn.Attributes.Add("class", "nav-link active");
                break;
        }
    }
}
