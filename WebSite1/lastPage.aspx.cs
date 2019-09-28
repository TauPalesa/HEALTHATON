using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lastPage : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["simphiwe"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}