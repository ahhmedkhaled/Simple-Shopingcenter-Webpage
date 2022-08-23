
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Shopping_Center

{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";
            // 2- Create SQL Insert statement string

            string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFname.Text, txtLname.Text, txtUsername.Text, txtPassword.Text, txtEmail.Text, RadioButtonList1.SelectedValue, txtPhone.Text, ddlCountry.SelectedValue);

            // 3- Create SQL Command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            try
            {
                // 4- Open the database
                conn.Open();

            // 5- Execute SQL Command
            cmdInsert.ExecuteNonQuery();

            // 6- Close the database
            conn.Close();
            // Save user profile picture
            if (fupPic.HasFile)
                fupPic.SaveAs(Server.MapPath("userPic") + "\\" + txtUsername.Text + ".jpg");

                HttpCookie koko = new HttpCookie("userInfo");
                koko.Values.Add("usern", txtUsername.Text);
                koko.Values.Add("passw", txtPassword.Text);
                koko.Expires = DateTime.Now.AddDays(3);
                koko.Values.Add("Fn", txtFname.Text);
                koko.Values.Add("Ln", txtLname.Text);
                lblMsg.Text = "Welcome " + txtFname.Text + ", Your Account has been Successfully Created!!";
        }
        catch (SqlException err)
        {
            if (err.Number == 2627)
                lblMsg.Text = "The Username " + txtUsername.Text + " already used, Please choose another !!";
            else
                lblMsg.Text = "Database error, Please try later !!";
        }

        catch
        {
            lblMsg.Text = "The system is not available at the moment, you may try later !!";
        }




    }

        protected void txtLname_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}