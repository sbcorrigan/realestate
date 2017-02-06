using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if(!IsPostBack)
        {
           

        }
        
    }
    protected void searchButton_Click(object sender, EventArgs e)
    {
        string state = searchText.Text;
        string url = ("PhotoGallery.aspx?");
        url += "state=" + state;
        Response.Redirect(url);

        HttpCookie cookie = new HttpCookie("Preferences");
        cookie["SearchState"] = searchText.Text;
        cookie.Expires = DateTime.Now.AddMinutes(5);
        Response.Cookies.Add(cookie);
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Context.User.Identity.IsAuthenticated)
        {
            Page.Theme = "Blue";
        }
        else
        {
            Page.Theme = "Gray";
        }
            
    }
   
}