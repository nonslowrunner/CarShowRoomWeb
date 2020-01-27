<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ElibraryManament02.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                      <br>
                                      <img src="imgs/accent-auto-vector-png-luxury-sports-car-vector-graphics-public-domain-vectors-1515.png" width="150px"  />
                                      </br>
                                      </center>
                               </div>
                          </div>
  


                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h4>Your Profile</h4>
                                      <span>Accout Status - </span>
                                        <asp:Label class="badge badge-pill badge-info" 
                                     ID="Label1" runat="server" Text="Your status"></asp:Label>

                                  </center>
                              </div>
                          </div>


                            <div class="row">
                              <div class="col">
                                 <hr></hr>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col-md-6">
                                   <label>Full Name</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                            placeholder="Full Name"> </asp:TextBox>                                      
                                    </div>
                                  </div>

                                <div class="col-md-6">
                                    <label>Date of Birth</label>
                                     <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                            placeholder="dd-mm-yy" TextMode="Date"> </asp:TextBox>                                     
                                    </div>
                              </div>
                        </div>

                          <div class="row">
                              <div class="col-md-6">
                                   <label>Contact No</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                            placeholder="Contact No" TextMode="Phone"></asp:TextBox>                                      
                                    </div>
                             </div>


                                <div class="col-md-6">
                                    <label>Email</label>
                                       <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                            placeholder="Email" TextMode="Email"> </asp:TextBox>                                      
                                         </div>
                                </div>
                         </div>
                          


                           <div class="row">

                              <div class="col-md-4">
                                   <label>State</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">

                                            <asp:ListItem Text="Select" Value="Select" />
                                            <asp:ListItem Text="Bangkok" Value="Bangkok" />
                                            <asp:ListItem Text="Chainat" Value="Chainat" />
                                            <asp:ListItem Text="Nakonsawan" Value="Nakonsawan" />
                                            <asp:ListItem Text="Pathumthani" Value="Pathumthani" />
                                            <asp:ListItem Text="Samuthprakran" Value="Samuthprakran" />

                                        </asp:DropDownList>                                     
                                    </div>
                               </div>


                                <div class="col-md-4">
                                    <label>City</label>
                                        <div class="form-group">
                                       <asp:TextBox class="form-control" ID="TextBox7" runat="server"
                                            placeholder="City"> </asp:TextBox>                                      
                                    </div>
                              </div>



                                <div class="col-md-4">
                                    <label>Pin Code</label>
                                         <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"
                                            placeholder="Pin Code" TextMode="Number"> </asp:TextBox>                                      
                                    </div>
                                 </div>

                              </div>

                                <div class="row">
                              <div class="col">
                                   <label>Full Address</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                            placeholder="Full Address" TextMode="MultiLine" ></asp:TextBox>                                      
                                    </div>
                                         </div>
                                 </div>


                                 <div class="row">
                                       <div class="col">
                                            <div class="from-group">
                                                 <center>                                                           
                                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                                 </center> 
                                            </div>
                                        </div>
                                 </div>



                        <div class="row">

                              <div class="col-md-4">
                                   <label>User ID</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"
                                            placeholder="User ID" ReadOnly="True"></asp:TextBox>                                      
                                    </div>
                             </div>


                                <div class="col-md-4">
                                    <label>Old password</label>
                                       <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox12" 
                               runat="server" placeholder="Password" TextMode="Password" 
                               ReadOnly="True"></asp:TextBox>         
                                           
                                         </div>
                                </div>


                              <div class="col-md-4">
                                    <label>New password</label>
                                       <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox19" runat="server"
                                            placeholder="New password" TextMode="Password" > </asp:TextBox>                                      
                                         </div>
                             </div>


                         </div>


                                   <div class="row">
                                       <div class="col-8 mx-auto">
                                         <center>
                                            <div class="from-group">                                                                  
                                                 <asp:Button class="btn-primary btn-block  btn-lg" ID="Button1"
                                                  runat="server" Text="Update" />
                                            </div>
                                         </center>

                                        </div>
                                 </div>




                        </div>
                    </div>




                  </div>




        
               <div class="col-md-7">

                  <div class="card">
                      <div class="card-body">

                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="imgs/icon/hands-giving-car-car-keys_101884-242.jpg" width="100px"  />
                                  </center>
                               </div>
                           </div>

                          <div class="row">
                               <div class="col">
                                  <center>
                                      <h4>Your Rented Cars</h4>
                                     <asp:Label class="badge badge-pill badge-info" 
                                     ID="Label2" runat="server" Text="History"></asp:Label>
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
                                   <asp:GridView class="table table-dark table-bordered"
                                       ID="GridView1" runat="server"></asp:GridView>                 
                                   

                                </div>
                        </div>
                     







                        </div>
                    </div>




                  </div>

              </div>
     </div>


                  <a href="hompage.aspx"><< Back to Garage</a><br><br></br></br>
                </div>















</asp:Content>
