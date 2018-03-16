using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    DataTable dt1 = new DataTable();
    DataSet ds1 = new DataSet();
    byte[] b1 = null;
    public void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["dt1"] != null)
            {
                dt1 = (DataTable)Session["dt1"];
                if (dt1.Rows.Count > 0)
                {
                    System.Text.ASCIIEncoding encoding = new System.Text.ASCIIEncoding();
                    b1 = ((byte[])dt1.Rows[0]["Img"]);
                    //Response.ContentType = "image/jpeg";
                    Response.BinaryWrite(b1);
                }
            }
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("home.aspx");
    }
}