<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Mastercraft.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
<div class="vikwidget_right vikshadow" style="min-height:715px">
                <div class="vikheader" >
        <div class="pull-left" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy">
                <asp:Label ID="Label1" runat="server" Text=""  /></h4>
            
            <div class="vikwidget-body ">
                <%--<img src="images/history.JPG" style="height:200px; width:100%;" />--%>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                
                    <div class="form-horizontal">
                        
                        <div class="form-group">
                            <span class="col-sm-3" >Name</span><span class="col-sm-2" >:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3">Email-id</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3">Phone Number</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3">Address</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-sm-3">Subject</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>

                        
                        
                        <div class="form-group">
                            <span class="col-sm-3"></span><span class="col-sm-2"></span>
                            <div class="col-sm-8">
                                <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger"/>
                            </div>
                        </div>

                    </div>
                <hr />
                <br />
                

                                             <p>Meet Us:<br />
                Office:<br />
                19-4-430/23/A, Tadban x Road, Near Nehro <br />
                Zoological Park, NH7, Hyderabad-64, <br />
                Telangana State, India. <br />

                </p>
               <br />
                  <p>Call Us:<br />
                    <p>For any information or assistance with regard to Our Courses and Services. Please call on the numbers 
                listed below: <br />     
                <p>+91-8121066705</p>   
                 <p>+91-040-24472417</p>       
                  <p>+91-040-24472418</p>       
                   <p>Or E-mail Us : Info@aismtc.com</p>           
                      
                      </p>  

             </div>
             
        </div>

        
        
     </div>
            </div>
            </form>
            <div>
            </div>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m12!1m8!1m3!1d60935.97028125766!2d78.4625127!3d17.3397468!3m2!1i1024!2i768!4f13.1!2m1!1sasian+institute+of+safety+management!5e0!3m2!1sen!2sin!4v1450845513085" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
                            
</asp:Content>
