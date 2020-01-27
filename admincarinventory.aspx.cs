using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace ElibraryManament02
{
    public partial class admincarinventory : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillBandCarValues();
            GridView1.DataBind();
        }

        // go button click
        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }


        // update button click

        protected void Button3_Click(object sender, EventArgs e)
        {

        }


        // delete button click

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        // add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfCarExists())
            {
                Response.Write("<script>alert('Car Already Exists, try again ');</script>");
            }
            else
            {
                addNewCar();
            }
        } 


        // user defined functions
        void fillBandCarValues()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT band_name from band_master_tbl;", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            DropDownList3.DataValueField = "band_name";
            DropDownList3.DataBind();

            cmd = new SqlCommand("SELECT car_name from car_publisher_master_tbl;", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataValueField = "car_name";
            DropDownList2.DataBind();


        }



        bool checkIfCarExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from car_master_tbl where car_id='" + TextBox1.Text.Trim() + "' OR car_name= '" +TextBox2.Text.Trim()+ "';", con);
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


        void addNewCar()
        {

            try
            {

                string tran = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    tran = tran + ListBox1.Items[i] + ",";
                }

                tran = tran.Remove(tran.Length - 1);


                string filepath = "~/carinventory/images (2).png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("carinventory/" + filename));
                filepath = "~/carinventory/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO car_master_tbl(car_id, car_name, seat, brand_name, transmission,actual_stock, current_stock, car_img_link ,price, cc, added_car, car_description,  years, edition) values(@car_id, @car_name, @seat, @brand_name, @transmission, @actual_stock, @current_stock, @car_img_link, @price,@cc, @added_car, @car_description, @years, @edition)", con);

                cmd.Parameters.AddWithValue("@car_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@car_name", TextBox2.Text.Trim());

                cmd.Parameters.AddWithValue("@seat", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@brand_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@transmission", tran);
                cmd.Parameters.AddWithValue("@actual_stock", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@price", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@cc", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@added_car", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@car_description", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@years", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@car_img_link", filepath);

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

    }
}
    
