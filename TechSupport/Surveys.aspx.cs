using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Surveys : System.Web.UI.Page
{
    private DataView incidentsTable;
    protected void Page_Load(object sender, EventArgs e)
    {
        txbCustomerID.Focus();
    }

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SurveyClass survey = new SurveyClass();
            survey.CustomerID = Convert.ToInt32(txbCustomerID.Text);
            survey.IncidentID = Convert.ToInt32(ListBox1.SelectedValue);

            if (RadioButtonList15.SelectedIndex != -1)
            {
                survey.ResponseTime = Convert.ToInt32(RadioButtonList15.SelectedValue);
            }
            if (RadioButtonList16.SelectedIndex != -1)
            {
                survey.TechEfficiency = Convert.ToInt32(RadioButtonList16.SelectedValue);
            }
            if (RadioButtonList17.SelectedIndex != -1)
            {
                survey.Resolution = Convert.ToInt32(RadioButtonList17.SelectedValue);
            }
            survey.Comments = TextBox1.Text;

            if (CheckBox1.Checked)
            {
                survey.Contact = true;
                if (RadioButtonList18.SelectedIndex == 0)
                    survey.ContactBy = "Email";
                else if (RadioButtonList18.SelectedIndex == 1)
                    survey.ContactBy = "Phone";
                Session.Add("Contact",true);
            }
            else
            {
                survey.Contact = false;
                Session.Add("Contact",false);
            }
            Response.Redirect("SurveyComplete.aspx");
        }
    }

    protected void bttGetIncidents_Click(object sender, EventArgs e)
    {

        incidentsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        incidentsTable.RowFilter = "CustomerID = " + txbCustomerID.Text
            + " And DateClosed Is Not Null";
        if (incidentsTable.Count > 0)
        {
            this.DisplayClosedIncidents();
            ListBox1.Enabled = true;
            Label5.Enabled = true;
            Label6.Enabled = true;
            Label7.Enabled = true;
            Label8.Enabled = true;
            Label9.Enabled = true;
            RadioButtonList15.Enabled = true;
            RadioButtonList16.Enabled = true;
            RadioButtonList17.Enabled = true;
            RadioButtonList18.Enabled = true;
            TextBox1.Enabled = true;
            CheckBox1.Enabled = true;
            ButtonSubmit.Enabled = true;
            ListBox1.Focus();
        }
        else
        {
            lblNoIncidentInfo.Visible = true;
            lblNoIncidentInfo.Text = "There are no incidents for that customer.";
        }
    }

    private void DisplayClosedIncidents()
    {
        ListBox1.Items.Add(new ListItem("--Select an incident--", "None"));
        foreach (DataRowView row in incidentsTable)
        {
            IncidentClass incident = new IncidentClass();
            incident.IncidentID = Convert.ToInt32(row["IncidentID"]);
            incident.ProductCode = row["ProductCode"].ToString();
            incident.DateClosed = Convert.ToDateTime(row["DateClosed"]);

            incident.Title = row["Title"].ToString();

            ListBox1.Items.Add(new ListItem(incident.CustomerIncidentDisplay(), incident.IncidentID.ToString()));
        }
        ListBox1.SelectedIndex = 0;
        lblNoIncidentInfo.Text = "";
    }
}