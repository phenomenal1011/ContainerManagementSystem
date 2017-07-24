﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["New"] != null)
        {
            welcome.Text += Session["New"].ToString();



        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    protected void Button_logout_Click(object sender, EventArgs e)
    {

        Session["New"] = null;
        Response.Redirect("UserLogin.aspx");


    }
}