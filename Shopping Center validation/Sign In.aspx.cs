using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Shopping_Center
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  string fname= "";
          //  string lname = "";
        }
 
        protected void btnlog_Click(object sender, EventArgs e)
        {
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

            // 2-Create SQL Select Statement
            // 2-Create SQL Select Statement
            string strSelect = "SELECT * FROM Member "
             + " WHERE Username = '" + TextUname.Text + "' AND "
             + " Password = '" + TextPass.Text + "'";
            // 3-Create SQL Select Command
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            // 4- Create Sql Data Reader
            SqlDataReader reader;

            // 5- Open the databse
            conn.Open();

            // 6- Execute Sql command
            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
            {
                string Fname = (string)reader.GetValue(0);
                string Lname = (string)reader.GetValue(1);
                string Email = (string)reader.GetValue(3);

                HttpCookie koko = new HttpCookie("userInfo");
                koko.Values.Add("usern", TextUname.Text);
                koko.Values.Add("passw", TextPass.Text);
                koko.Values.Add("Fn", Fname);
                koko.Values.Add("Ln", Lname);
                koko.Values.Add("email", Email);
                koko.Expires = DateTime.Now.AddDays(3);
                Response.Cookies.Add(koko);

                if (TextUname.Text == "Admin202")
                    Response.Redirect("~/adminHome.aspx");
                else
                    Response.Redirect("~/userHome.aspx");
            }
            else
                lblMsg.Text = "Incorrect UserName or Password ,Please try again ";

            // 7-Close The database
            conn.Close();

        }
    }
}