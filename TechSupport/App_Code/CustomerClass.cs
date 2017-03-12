﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CustomerClass
{
   private string customerId;
    private string name;
    private string address;
    private string city;
    private string state;
    private string zipCode;
    private string phone;
    private string email;

	public CustomerClass(string cid,string nam,string add,string cit, string stat,string zip,string pho,string ema)
	{
        customerId = cid;
        name = nam;
        address = add;
        city = cit;
        state = stat;
        zipCode = zip;
        phone = pho;
        email = ema;
	}
    public CustomerClass(string add, string pho, string ema)
	{
        
        address = add;
     
        phone = pho;
        email = ema;
	}

    public string getCustomerId() { return customerId; }
    public string getName() { return name; }
    public string getAddress() { return address; }
    public string getCity() { return city; }
    public string getState() { return state; }
    public string getZipCode() { return zipCode; }
    public string getPhone() { return phone; }
    public string getEmail() { return email; }

    public string toString()
    {
        string s = "";
        s = address + "," + phone + "," + email;
        return s;
    }
}