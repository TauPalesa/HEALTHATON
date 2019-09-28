using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["simphiwe"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["username"] = null;
        //Session["idno"] = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string select = "SELECT * FROM healthaton WHERE username = '" + Email.Text + "' AND password = '" + password.Text + "'";
        OdbcDataAdapter adapt = new OdbcDataAdapter(select, conn);
        DataSet dts = new DataSet();
        adapt.Fill(dts);
        DataTable myTable = dts.Tables[0];
        if (myTable.Rows.Count > 0)
        {
            Response.Write("Good");
            foreach (DataRow getv in myTable.Rows)
            {
                Session["username"] = getv["username"].ToString();
                Session["idno"] = getv["idNum"].ToString();
                string role= getv["role"].ToString();
                if (role == "receptionist")
                {
                    Response.Redirect("recept.aspx");

                }
                else
                {
                    Response.Redirect("book.aspx");

                }
            }
        }
        else
        {
            Response.Write("Not registerd");
        }

    }
}