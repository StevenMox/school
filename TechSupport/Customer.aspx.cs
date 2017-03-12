using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer : System.Web.UI.Page
{
    private CustomerClass cust;
    private ContactListClass clist;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { ddlCustomerName.DataBind(); }
        CustomerClass c = getSelectedCustomer();
        lblAddress.Text = cust.getAddress();
        lblPhone.Text = cust.getPhone();
        lblEmail.Text = cust.getEmail();
    
    }
    private CustomerClass getSelectedCustomer() 
    {
        
        DataView CustomerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        CustomerTable.RowFilter = string.Format("CustomerID = '{0}'", ddlCustomerName.SelectedValue);
        DataRowView row = (DataRowView)CustomerTable[0];
        string address = row["Address"].ToString();
        string phone = row["Phone"].ToString();
        string email = row["Email"].ToString();
        this.cust = new CustomerClass(address, phone, email);
        return cust;
    }

    protected void btAddToList_Click(object sender, EventArgs e)
    {
        // When the Add to Contact list button on the Customers page is clicked, 
        // the application should use the Customerlist class to add the customer to the list.

        clist = ContactListClass.getCallList();
        if (this.cust != null)
        {
            
            clist.Additem(this.cust);
        }
    }
   
    protected void btDisplay_Click(object sender, EventArgs e)
    {
        Server.Transfer("Contactlist.aspx");
    }
}