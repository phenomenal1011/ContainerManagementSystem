using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterationConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count (*) From [Table] where UserName='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User Already Exist!");
            }
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Guid newguid = Guid.NewGuid();
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterationConnectionString"].ConnectionString);
            con.Open();
            string insertQ = "insert into [Table] (ID,UserName,Email,Password,Country) values (@ID, @Uname, @email, @password, @country)";
            SqlCommand com = new SqlCommand(insertQ, con);
            com.Parameters.AddWithValue("@ID", newguid);
            com.Parameters.AddWithValue("@Uname",TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());

            com.ExecuteNonQuery();
            Response.Redirect("Manager.aspx");
            Response.Write("Success!");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: "+ex.ToString());
        }
    }
}