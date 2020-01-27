<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincaradding.aspx.cs" Inherits="ElibraryManament02.admincaradding" %>
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
                                      <h4>Cars Adding</h4>
                                 
                                  </center>
                              </div>
                             </div>

                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="imgs/icon/modern-city-car-isolated-vector-set_124507-46.jpg" width="150px"  />
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
                                   <label>Band ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                            placeholder="Band ID"> </asp:TextBox>                                               
                                             </div>
                                       </div>
                                   </div>


                             <div class="col-md-6">
                                   <label>Car ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                            placeholder="ID"> </asp:TextBox>       
                                           
                                       <asp:Button class="btn-dark" ID="Button5"
                                                  runat="server" Text="Go" />
                                             </div>
                                       </div>
                                     </div>
                              </div>
                        

                         <div class="row">
                                <div class="col-md-6">
                                    <label>Band Name</label>
                                     <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                            placeholder="Band Name" ReadOnly="True"> </asp:TextBox>                                     
                                    </div>
                              </div>
                
                                                                     
                                      <div class="col-md-6">
                                   <label>Car Name</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                            placeholder="Car Name" ReadOnly="True"> </asp:TextBox>     
                                            
                                             </div>
                                       </div>
                                      </div>
                                    </div>



                           <div class="row">
                                <div class="col-md-6">
                                    <label>Start Date</label>
                                     <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                            placeholder="Start Date" TextMode="Date"> </asp:TextBox>                                     
                                    </div>
                              </div>
                
                                                                     
                                   <div class="col-md-6">
                                    <label>Return Date</label>
                                     <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"
                                            placeholder="Return date" TextMode="Date"> </asp:TextBox>                                     
                                    </div>
                              </div>
                           </div>

                 </div>





                                   <div class="row">
                                       <div class="col-6">
                                          <asp:Button ID="Button2" class="btn btn-lg btn-block badge-primary" 
                                              runat="server" Text="Add" />                                                                                                                              
                                            </div>
                            
                                         <div class="col-6">
                                          <asp:Button ID="Button4" class="btn btn-lg btn-block badge-success" 
                                              runat="server" Text="Delete" />                                                                                                                              
                                           </div>


                                        </div>

                                         <br><br>
                                 </div>
         
                   </div>



       
        
               <div class="col-md-7">

                  <div class="card">
                      <div class="card-body">

                        

                          <div class="row">
                               <div class="col">
                                  <center>
                                      <h4>Added Car List</h4>                                  
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




      

                 <a href="hompage.aspx"><< Back to Garage</a><br><br>
           









</asp:Content>
