using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
       
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterationConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count (*) From [Table] where UserName='" + TextBoxid.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
            string checkpass = "select Password from [Table] where UserName='" + TextBoxid.Text + "'";
            SqlCommand passcom = new SqlCommand(checkpass, con);
            string password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if(password == TextBoxpasswd.Text)
            {
                Session["New"] = TextBoxid.Text;
                Response.Write("Password is Correct!");
                Response.Redirect("Users.aspx");
            }else
            {
                Response.Write("Password is Incorrect!");
            }
        } else
        {
            Response.Write("Username is Incorrect!");

        }
            con.Close();
        
    }
}