using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccountPages_MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
            ProfileCommon profile = Profile.GetProfile(User.Identity.Name);
            if (profile.LastUpdatedDate == DateTime.MinValue)
            {
                provideInfo.Visible = true;
                dobCalendar.VisibleDate = DateTime.Today.AddYears(-20);
                dobCalendar.SelectedDate = DateTime.Today.AddYears(-20);
            }
            else
            {
                showAccountInfo.Visible = true;
                displayProfile();
            }
        }
    }

    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        dobCalendar.VisibleDate = dobCalendar.VisibleDate.AddYears(1);
        dobCalendar.SelectedDate = dobCalendar.SelectedDate.AddYears(1);
    }

    protected void btnPrevYear_Click(object sender, EventArgs e)
    {
        dobCalendar.VisibleDate = dobCalendar.VisibleDate.AddYears(-1);
        dobCalendar.SelectedDate = dobCalendar.SelectedDate.AddYears(-1);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        saveProfile();
        displayProfile();
        provideInfo.Visible = false;
    }

    private void displayProfile()
    {
        lblDisplayFirstname.Text = Profile.FirstName;
        lblDisplayLastName.Text = Profile.LastName;
        lblDisplayDob.Text = Profile.DateOfBirth.ToShortDateString();
        showAccountInfo.Visible = true;
    }

    private void saveProfile()
    {
        Profile.FirstName = txtFirstName.Text;
        Profile.LastName = txtLastName.Text;
        Profile.DateOfBirth = dobCalendar.SelectedDate;
        Profile.Save();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        displayProfile();
        provideInfo.Visible = false;
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        provideInfo.Visible = true;
        showAccountInfo.Visible = false;
        txtFirstName.Text = Profile.FirstName;
        txtLastName.Text = Profile.LastName;
        dobCalendar.VisibleDate = Profile.DateOfBirth;
        dobCalendar.SelectedDate = Profile.DateOfBirth;
        btnCancel.Visible = true;
    }
}