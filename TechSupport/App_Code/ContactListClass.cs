using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ContactListClass
/// </summary>
public class ContactListClass
{
    //This class should include a private field that stores a list<Customer> object
   //public Customer this[int index]
   //public Customer this[string name]
   //public int Count 
   //public CustomerList()
   //public static CustomerList GetCustomers() 
   //public void Additem(Customer customer) 
   //public void RemoveAt(int index)
   //public void Clear()


    //----------------------------------------------------


    public List<CustomerClass> contactList;
  

    public ContactListClass()
	{
        contactList = new List<CustomerClass>();
	}

    public static ContactListClass GetCustomers()
    {

        ContactListClass con = new ContactListClass();
        return con;

    }
    public void Additem(CustomerClass customer) 
    {
        contactList.Add(customer);
    }
    public void RemoveAt(int index) 
    {
        contactList.RemoveAt(index);
    }
    public void ClearALL() 
    {
        contactList.Clear();
    }

    public static ContactListClass getCallList()
    {
        ContactListClass cList = (ContactListClass)HttpContext.Current.Session["cList"];
        if (cList == null)
            HttpContext.Current.Session["cList"] = new ContactListClass();
        return (ContactListClass)HttpContext.Current.Session["cList"];
    }

    public int numItems()
    {
        return contactList.Count;
    }

    public CustomerClass getCustomerByIndex(int index)
    {
        // Customer c=null;
        // if (index < 0 || index >= numItems()) return null;        
        //return callList[index]; 
        return contactList.ElementAt(index);
    }

}