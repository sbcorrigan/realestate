using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Data.SqlClient;

public partial class PhotoGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            string buttons = Request.QueryString["state"];
            lblstate.Text = buttons;
            if (buttons == "all")
            {
                defaultresults.Visible = true;
                gridil.Visible = false;
                gridca.Visible = false;
                gridak.Visible = false;
                gridor.Visible = false;
                gridfl.Visible = false;
            }
            else if(buttons=="illinois")
            {
                defaultresults.Visible = false;
                gridil.Visible = true;
                gridca.Visible = false;
                gridak.Visible = false;
                gridor.Visible = false;
                gridfl.Visible = false;
            }
            else if (buttons == "california")
            {
                defaultresults.Visible = false;
                gridil.Visible = false;
                gridca.Visible = true;
                gridak.Visible = false;
                gridor.Visible = false;
                gridfl.Visible = false;
            }
            else if (buttons=="arkansas")
            {
                defaultresults.Visible = false;
                gridil.Visible = false;
                gridca.Visible = false;
                gridak.Visible = true;
                gridor.Visible = false;
                gridfl.Visible = false;
            }
            else if (buttons == "oregon")
            {
                defaultresults.Visible = false;
                gridil.Visible = false;
                gridca.Visible = false;
                gridak.Visible = false;
                gridor.Visible = true;
                gridfl.Visible = false;
            }
            else if (buttons=="florida")
            {
                defaultresults.Visible = false;
                gridil.Visible = false;
                gridca.Visible = false;
                gridak.Visible = false;
                gridor.Visible = false;
                gridfl.Visible = true;
            }
            
        }
        
    }
    protected void Unnamed_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
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