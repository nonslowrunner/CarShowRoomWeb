<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincarbandmanagement.aspx.cs" Inherits="ElibraryManament02.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

     <div class="container">
         <div class="row">
              <div class="col-md-5">

                  <div class="card">
                      <div class="card-body">

                      <div class="row">
                               <div class="col">
                                  <center>
                                      <h4>Cars Band</h4>
                                 
                                  </center>
                              </div>
                             </div>

                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="imgs/icon/download%20(1).jpg" width="150px"  />
                                  </center>
                               </div>
                           </div>





                            <div class="row">
                              <div class="col">
                                 <hr></hr>
                              </div>
                          </div>

                         <div class="row">
                     <div class="col-md-4">
                        <label>Band ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>

                                <div class="col-md-8">
                                    <label>Band name</label>
                                     <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                            placeholder="Band name" > </asp:TextBox>                                     
                                    </div>
                              </div>
                        </div>



                            

                                   <div class="row">
                                       <div class="col-4">
                                          <asp:Button ID="Button2" class="btn btn-lg btn-block badge-info" runat="server" Text="Add" OnClick="Button2_Click" />                                                                                                                              
                                            </div>
                            
                                         <div class="col-4">
                                          <asp:Button ID="Button3" class="btn btn-lg btn-block badge-warning" runat="server" Text="Update" OnClick="Button3_Click" />                                                                                                                              
                                            </div>

                                         <div class="col-4">
                                          <asp:Button ID="Button4" class="btn btn-lg btn-block badge-danger" runat="server" Text="Delete" OnClick="Button4_Click" />                                                                                                                              
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
                                      <h4>Band List</h4>                                  
                                  </center>
                              </div>
                             </div>

         
                        <div class="row">
                               <div class="col">
                                   <hr>
                                </div>
                        </div>
                     
                        
                   
                          
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [band_master_tbl]"></asp:SqlDataSource>

                               <div class="col">
                                   <asp:GridView class="table table-striped table-bordered"
                                       ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="band_id" DataSourceID="SqlDataSource1">
                                       <Columns>
                                           <asp:BoundField DataField="band_id" HeaderText="Band ID" ReadOnly="True" SortExpression="band_id" />
                                           <asp:BoundField DataField="band_name" HeaderText="Band" SortExpression="band_name" />
                                       </Columns>
                                   </asp:GridView>                 
                                   

                                </div>
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
