﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ElibraryManament02.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
         <div class="row">
              <div class="col-md-6 mx-auto">

                  <div class="card">
                      <div class="card-body">

                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="imgs/icon/shutter9.jpg" width="100px"  />
                                  </center>
                               </div>
                          </div>
                      
                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h3>User Login</h3>
                                  </center>
                              </div>
                          </div>


                            <div class="row">
                              <div class="col">
                                 <hr></hr>
                              </div>
                          </div>

                            <div class="row">
                              <div class="col">
                                    <div class="from-group">
                                        
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                            placeholder="Username/Email address"> </asp:TextBox>                                      
                                    </div>

                                     <br>
                                    <div class="from-group">                            
                                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                            placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </br>
                                    </div>


                                   <div class="from-group">                                                                  
                                       <asp:Button class="btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                  </div>

                                  
                                    <div class="from-group">                                                                  
                                        <a href="usersignup.aspx"> <input class="btn-dark btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a> 
                                    </div>

                        </div>
                    </div>




                              </div>
                          </div>


                  <a href="hompage.aspx"><< Back to Garage</a><br><br></br></br>
                  </div>   
             

             </div>
      </div>

       

     




</asp:Content>
