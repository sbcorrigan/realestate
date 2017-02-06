using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteTemplate : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Context.User.Identity.IsAuthenticated)
        {
            lblWelcome.Text = "Hi " + Context.User.Identity.Name + " !  ";

            DateTime startTime = (DateTime)Session["SessionStart"];
            TimeSpan time = (startTime.AddMinutes(30) - DateTime.Now);
            int minutes = time.Minutes;
            int seconds = time.Seconds;

            lblSessionTime.Text = "Session started at " + startTime.ToString("MM/dd/yy hh:mm:ss tt");        
        }
        else
        {
            lblWelcome.Text = "Hi guest!";
        }
        
    }
    
    
}
