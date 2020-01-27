<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincarinventory.aspx.cs" Inherits="ElibraryManament02.admincarinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Car Details</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>

                                <img id="imgview" Height="100px" Width="100px"
                        src="carinventory/images (2).png" />

                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Car ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Car Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Car Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Seat</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="2" Value="2" />
                              <asp:ListItem Text="4" Value="4" />
                              <asp:ListItem Text="7" Value="7" />
                              <asp:ListItem Text="13" Value="13" />
                              
                           </asp:DropDownList>
                        </div>
                        <label>Car Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="GTR" Value="GTR" />
                              <asp:ListItem Text="Mustang" Value="Mustang" />
                              <asp:ListItem Text="AE86" Value="AE86" />
                              <asp:ListItem Text="R35" Value="R35" />
                              <asp:ListItem Text="R34" Value="R34" />
                              <asp:ListItem Text="R33" Value="R33" />
                              <asp:ListItem Text="GTO" Value="GTO" />
                              <asp:ListItem Text="Carrara" Value="Carrara" />
                              <asp:ListItem Text="Hurracan" Value="Hurracan" />
                              <asp:ListItem Text="Vellfire" Value="Vellfire" />




                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Brand Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="Toyota" Value="Toyota" />
                              <asp:ListItem Text="Misubishi" Value="Misubishi" />
                              <asp:ListItem Text="Lambogini" Value="Lambogini" />
                              <asp:ListItem Text="Ferrai" Value="Ferrai" />
                              <asp:ListItem Text="Mazda" Value="Mazda" />


                           </asp:DropDownList>
                        </div>
                        <label>Years</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="years" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Transmission</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Automatic" Value="Automatic" />
                              <asp:ListItem Text="Manual" Value="Manual" />
                                                           
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Edition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Rent Cost(per unit)</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Price" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>CC</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="CC" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Actual Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Current Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="amount" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Added Car</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Date" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Car Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Car Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Car Inventory List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">

                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [car_master_tbl]"></asp:SqlDataSource>

                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="car_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="car_id" HeaderText="ID" ReadOnly="True" SortExpression="car_id" />
                               




                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class ="container-fluid">
                                            <div class ="row">
                                                <div class="col-lg-10">
                                                     <div class ="row">
                                                             <div class="col-12">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("car_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                             </div>
                                                     </div>

                                                    <div class ="row">
                                                             <div class="col-12">





                                                                 Brand -
                                                                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("brand_name") %>'></asp:Label>
                                                                 &nbsp;| Transmission -
                                                                 <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("transmission") %>'></asp:Label>
                                                                 &nbsp;| Seat -
                                                                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("seat") %>'></asp:Label>





                                                             </div>
                                                     </div>

                                                    <div class ="row">
                                                             <div class="col-12">





                                                                 Car_name -
                                                                 <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("car_name") %>'></asp:Label>
                                                                 &nbsp;| Added Date -
                                                                 <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("added_car") %>'></asp:Label>
                                                                 &nbsp;| Price -
                                                                 <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("price") %>'></asp:Label>





                                                             </div>
                                                     </div>



                                                    <div class ="row">
                                                             <div class="col-12">






                                                </div>
                                                 <div class="col-lg-2">

                                                     <asp:Image  class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("car_img_link") %>' />

                                                </div>

                                            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:TemplateField>
                               




                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>