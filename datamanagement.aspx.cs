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
    public partial class datamanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author with this ID already Exist. You cannot add another Author with the same Author ID');</script>");
            }
            else
            {
                addNewAuthor();
            }

            
        }


        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExists())
            {
                updateAuthor();

            }
            else
            {
                Response.Write("<script>alert('Food name does not exist');</script>");
            }
        }

        //delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Food does not exist');</script>");
            }

        }

        //Go button click
        protected void Button2_Click(object sender, EventArgs e)
        {

        }


        //user defined function


        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl WHERE food_name='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Food Item Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateAuthor()
        {
           try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET protein=@prot, fat=@fat, carb=@carb, calorie=@cal WHERE food_name='" + TextBox1.Text.Trim() + "'", con);

               
                cmd.Parameters.AddWithValue("@prot", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@fat", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@carb", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@cal", TextBox13.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Food Nutrition Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
               Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewAuthor()
        {
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
                    cmd.CommandText = "INSERT INTO author_master_tbl (food_name,protein,fat,carb,calorie) VALUES (@food_name,@prot,@fat,@carb,@cal)";

                    // Add parameters to the command
                    cmd.Parameters.AddWithValue("@food_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@prot", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@fat", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@carb", TextBox12.Text.Trim());
                    cmd.Parameters.AddWithValue("@cal", TextBox13.Text.Trim());

                    // Execute the SQL command
                    cmd.ExecuteNonQuery();
                    clearForm();
                    GridView1.DataBind();
                }

            }
            Response.Write("<script>alert('Added Succesfully');</script>");
            // Redirect the user to a confirmation page
            //Response.Redirect("webform1.aspx");
        }



        bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where food_name='" + TextBox1.Text.Trim() + "';", con);
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }
    }
}


//LAPTOP - 5TCK3L0U\SQLEXPRESS