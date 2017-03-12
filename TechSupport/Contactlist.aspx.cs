using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactlist : System.Web.UI.Page
{
    private ContactListClass clist;
    protected void Page_Load(object sender, EventArgs e)
    {
        //When the Contact list page is loaded, 
        //the application should retrieve the customer list from **session state**
        clist = ContactListClass.getCallList();
        
        if (!IsPostBack)
            DisplayList();
    }
    private void DisplayList()
    {
        tbContactList.Items.Clear();

        for (int i = 0; i < clist.numItems(); i++)
        {
            CustomerClass c = clist.getCustomerByIndex(i);
            if (c != null)
                tbContactList.Items.Add(c.toString());
        }

    }

    protected void btAddCustomers_Click(object sender, EventArgs e)
    {
        Server.Transfer("Customer.aspx");

    }
    protected void btRemoveContact_Click(object sender, EventArgs e)
    {
        //When the Remove Contact button is clicked,
        //the application should use the **RemoveAt method** of the Customerlist class 
        //to remove the customer from the customer list.
        if (clist.numItems() > 0)
        {
            if (tbContactList.SelectedIndex >= 0)
            {
                clist.RemoveAt(tbContactList.SelectedIndex);
                DisplayList();
            }

        }
    }

    protected void btEmptyList_Click(object sender, EventArgs e)
    {
        // When the Empty list button is clicked, 
        //the application should use the **Clear method** of the Customerlist class 
        //to clear the customer list.
        if (clist.numItems() > 0)
        {
            tbContactList.Items.Clear();
            clist.ClearALL();
        }

    }
}