using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nutrix1
{ 
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
           


                // Create a new SQL connection
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    // Open the connection
                    con.Open();

                    // Create a new SQL command
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        // Set the connection for the command
                        cmd.Connection = con;

                        // Set the SQL command text
                        cmd.CommandText = "INSERT INTO member_master_tbl (full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password) VALUES (@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password)";

                        // Add parameters to the command
                        cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                        cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                        cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                        cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                        cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                        cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());



                        // Execute the SQL command
                        cmd.ExecuteNonQuery();
                    }
                }
            // Redirect the user to a confirmation page
            Response.Redirect("webform1.aspx");

        }

    }
}
