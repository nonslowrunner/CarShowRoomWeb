using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManament02
{
    public partial class admincarmanagement : System.Web.UI.Page
    { 
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


  protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    // add car
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkPublisherExists())
        {
            Response.Write("<script>alert('Car Already Exist with this ID.');</script>");
        }
        else
        {
            addNewPublisher();
        }
    }
    // update publisher
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkPublisherExists())
        {
            updatePublisherByID();
        }
        else
        {
            Response.Write("<script>alert('Car with this ID does not exist');</script>");
        }
    }
    // delete publisher
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (checkPublisherExists())
        {
            deletePublisherByID();
        }
        else
        {
            Response.Write("<script>alert('Car with this ID does not exist');</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getPublisherByID();
    }




    // user defined functions

    void getPublisherByID()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from car_publisher_master_tbl where car_id='" + TextBox1.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                TextBox3.Text = dt.Rows[0][1].ToString();
            }
            else
            {
                Response.Write("<script>alert('Car with this ID does not exist.');</script>");
            }


        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");

        }
    }

    bool checkPublisherExists()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from car_publisher_master_tbl where car_id='" + TextBox1.Text.Trim() + "';", con);
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

    void addNewPublisher()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO car_publisher_master_tbl(car_id,car_name) values(@car_id,@car_name)", con);

            cmd.Parameters.AddWithValue("@car_id", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@car_name", TextBox3.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Car added successfully.');</script>");
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    public void updatePublisherByID()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            SqlCommand cmd = new SqlCommand("update car_publisher_master_tbl set car_name=@car_name WHERE car_id='" + TextBox1.Text.Trim() + "'", con);
            cmd.Parameters.AddWithValue("@car_name", TextBox3.Text.Trim());
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {

                Response.Write("<script>alert('Car Updated Successfully');</script>");
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Car ID does not Exist');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    public void deletePublisherByID()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            SqlCommand cmd = new SqlCommand("Delete from car_publisher_master_tbl WHERE car_id='" + TextBox1.Text.Trim() + "'", con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {

                Response.Write("<script>alert('Car Deleted Successfully');</script>");
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Car ID does not Exist');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


}
}