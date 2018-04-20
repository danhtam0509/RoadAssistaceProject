using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\PublishProfiles\\Road.mdf;Integrated Security=True"))
        {
            SqlCommand cmd = new SqlCommand("SELECT FirstName, LastName FROM Customer WHERE " +
                "Username='" + Session["Username"] + "'", connection);
            connection.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                    lblUsername.Text = reader.GetString(0);
            }
            reader.Close();
        }
    }
}