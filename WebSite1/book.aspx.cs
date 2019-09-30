using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["simphiwe"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["idno"]== null)
        {
            Response.Redirect("login.aspx");
        }
        else if (Session["username"] != null)
        {
            Response.Write(Session["username"].ToString());
            string name = Session["username"].ToString();
            string select = "SELECT firstname,surname,gender,idNum,username,cellnumber FROM healthaton WHERE username = '" 
                + name + "'";
            OdbcDataAdapter adapt = new OdbcDataAdapter(select, conn);
            DataSet dts = new DataSet();
            adapt.Fill(dts);
            DataTable myTable = dts.Tables[0];
            if (myTable.Rows.Count > 0)
            {
                Response.Write("Good");
                foreach (DataRow getv in myTable.Rows)
                {
                    name1.Text = getv["firstname"].ToString();
                    surname.Text = getv["surname"].ToString();
                    gender.Text = getv["gender"].ToString();
                    idNum.Text = getv["idNum"].ToString();
                    email.Text = getv["username"].ToString();
                    cellNo.Text = getv["cellnumber"].ToString();
                }
            }
        }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        REASON.Text = "Reasin For Consaltation";
        Medication.Visible = true;
        Session["reson"] = "Consaltation";
        reason1.Text = "Consaltation";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        REASON.Text = "Medication Description";
        Medication.Visible = true;
        Session["reson"] = "collection";
        reason1.Text = "collection";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Region_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        makebook();
    }
    void makebook()
    {
        string val = idNum.Text.ToString();
        {
            string insert = "INSERT INTO hospital_name (IDnum,Province,region,hospital,date1,time1,reason) VALUES('"
              + val + "','" + Provname.SelectedItem.ToString() + "','" + Region.SelectedItem.ToString() + "','" + Hospital.Text
              + "','" + date1.Text + "','" + time1.Text + "','" + reason1.Text + "')";

            if (Hospital.SelectedIndex > -1)
            {
                conn.Open();
                OdbcCommand cmd = new OdbcCommand(insert, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("lastpage.aspx");
            }
            else
            {
                Response.Write("Invalis user name or password");
            }
        }
    }

    protected void Hospital_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void saveD_Click(object sender, EventArgs e)
    {
        makebook();
    }
}