using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/newpro/website/adminaccounts.accdb");
    //OleDbCommand cmd;
    OleDbDataAdapter da;
    DataTable dt = new DataTable();
    String usr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        da = new OleDbDataAdapter("select usrnm from online where id=( select max(id) from online)", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            usr = ds.Tables[0].Rows[0]["usrnm"].ToString();
        }
        da = new OleDbDataAdapter("select Fname from accounts where usrnm='"+ usr +"'", con);
        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Label5.Text = ds1.Tables[0].Rows[0]["Fname"].ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        //OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["image_ConnectionString"].ConnectionString);
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/newpro/website/adminaccounts.accdb");
        con.Open();
        try
        {
            
            string file_name = Path.GetFileName(FileUpload1.PostedFile.FileName);
            
            long size_img = FileUpload1.PostedFile.InputStream.Length;
            if (size_img <= 5120000)
            {
                
                FileUpload1.SaveAs(Server.MapPath("Files/Images/" + file_name));
                Label1.Text = "Image successfully added in images folder";
                string f1 = "Files/Images/" + file_name;
                string d1, d2;
                d1 = DropDownList1.Text;
                d2 = DropDownList2.Text;
                int v = 0;
                //OleDbCommand cmd = new OleDbCommand("insert into products values(" + TextBox1.Text + "," + TextBox2.Text + "," + "abc" + "," + "adsf" + "," + "fy" + "," + d2 + "," + TextBox3.Text + "," + usr + ")", con);
               
                OleDbCommand cmd = new OleDbCommand("insert into products values(@pname,@pdesc,@img,@path,@yr,@dept,@price,@user)",con);
                cmd.Parameters.AddWithValue("pname",TextBox1.Text);
                cmd.Parameters.AddWithValue("pdesc", TextBox2.Text);
                cmd.Parameters.AddWithValue("img", file_name);
                cmd.Parameters.AddWithValue("path", f1);
                cmd.Parameters.AddWithValue("yr", DropDownList1.Text);
                cmd.Parameters.AddWithValue("dept", DropDownList2.Text);
                cmd.Parameters.AddWithValue("price", TextBox3.Text);
                cmd.Parameters.AddWithValue("user", usr);
               // cmd.Parameters.AddWithValue("id", v);
                cmd.ExecuteNonQuery();
                Label1.Text = "Image name and path inserted in database successfully ";
                Server.Transfer("home1.aspx");
            }
            else
            {
                Label1.Text = "Please Upload image size less than equal to 50 kB ";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        
            con.Close();
       
    }

}
        
