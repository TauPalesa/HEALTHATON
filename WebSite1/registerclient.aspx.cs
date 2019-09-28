using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["simphiwe"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void re()
    {
        string insert = "INSERT INTO healthaton (Firstname,Surname,idNum,Gender,Age,Cellnumber,country,Nxkname,NxkSurname,NxkNo,username,password,role) values('"
                + name1.Text + "','" + Surname.Text + "','" + NEWID.Text.ToString() + "','" + gender.Text + "','" + age.Text + "','" + Cellnumber.Text + "','" + Address.Text + "','" +
                Nxkname.Text + "','" + NxkSurname.Text + "','" + NxkNo.Text + "','" + Email.Text + "','" + password.Text + "','" +role.SelectedValue.ToString()+ "')";
        if (Email.Text.Length < 1)
        {
            Response.Write("Enter your user name");
        }
        else
        {
            conn.Open();
            OdbcCommand cmd = new OdbcCommand(insert, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("login.aspx");
        }
    }
    protected void registerb_Click(object sender, EventArgs e)
    {
        re();
    }
}