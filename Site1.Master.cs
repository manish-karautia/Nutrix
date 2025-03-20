using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nutrix1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton4.Visible = false; // hello user link button


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // author management link button
                    LinkButton12.Visible = false; // publisher management link button
                    LinkButton8.Visible = false; // book inventory link button
                    LinkButton9.Visible = false; // book issuing link button
                    LinkButton10.Visible = false; // member management link button

                }

                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton4.Visible = true; // hello user link button
                    LinkButton4.Text = "Hello " + Session["username"].ToString();


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // Data management link button
                    LinkButton12.Visible = false; // Member management link button
                    LinkButton8.Visible = false; // Admin Meal inventory link button
                    LinkButton9.Visible = false; // book issuing link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton4.Visible = true; // hello user link button
                    LinkButton4.Text = "Hello Admin";


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // author management link button
                    LinkButton12.Visible = true; // publisher management link button
                    LinkButton8.Visible = true; // book inventory link button
                    LinkButton9.Visible = true; // book issuing link button
                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
            
        }

       
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("datamanagement.aspx");

        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("membermanagement.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_meal_inventory.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "null";
            Session["fullname"] = "null";
            Session["role"] = "null";
            Session["status"] = "null";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton4.Visible = false; // hello user link button


            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = false; // author management link button
            LinkButton12.Visible = false; // publisher management link button
            LinkButton8.Visible = false; // book inventory link button
            LinkButton9.Visible = false; // book issuing link button
            LinkButton10.Visible = false; // member management link button

            Response.Redirect("homepage.aspx");
        }

    }
}