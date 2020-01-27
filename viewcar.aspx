<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewcar.aspx.cs" Inherits="ElibraryManament02.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>
             <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Car List</h4>
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




</asp:Content>
