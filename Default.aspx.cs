using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default12 : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();
    byte[] b = null;
    public void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["dt"] != null)
            {
                dt = (DataTable)Session["dt"];
                if (dt.Rows.Count > 0)
                {
                    System.Text.ASCIIEncoding encoding = new System.Text.ASCIIEncoding();
                    b = ((byte[])dt.Rows[0]["Img"]);
                    //Response.ContentType = "image/jpeg";
                    Response.BinaryWrite(b);
                }
            }
        }
        Server.Transfer("home1.aspx");
    }
}