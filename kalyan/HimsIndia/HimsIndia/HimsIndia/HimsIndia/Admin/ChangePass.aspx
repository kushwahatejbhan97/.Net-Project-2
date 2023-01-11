<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="HimsIndia.Admin.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Change Password</h4>

                                    
                                    
                                </div>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
  

   
    <div  class="form-group">
     <div class="row">
  <div class="col-sm-6 col-md-6">
  <label>Enter New Password</label>
  <asp:TextBox ID="txtPass" placeholder="New Password" TextMode="Password" ValidationGroup="abc" class="form-control" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPass" ValidationGroup="abc" ForeColor="Red" runat="server" ErrorMessage="Enter New Password"></asp:RequiredFieldValidator>

    
    </div>

     
    </div>
    </div>

     <div  class="form-group">
     <div class="row">
    <div class="col-sm-6 col-md-6">
    <label>Re-Enter New Password</label>
    <asp:TextBox ID="txtConf" placeholder="Re-Enter New Password" TextMode="Password" ValidationGroup="abc" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtConf" ValidationGroup="abc" ForeColor="Red" runat="server" ErrorMessage="Re-Enter Password"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPass" ControlToValidate="txtConf" ValidationGroup="abc" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Password Not Matched"></asp:CompareValidator>
    </div>
     </div>
    </div>
    
    <div>
   <asp:Button ID="Button1" runat="server" ValidationGroup="abc" class="btn btn-primary" Text="Submit" 
            onclick="Button1_Click"></asp:Button> 
    
    </div>

 
 </div>
                                </div>
                               
                            </div> 
        
                       



                    </div> 




                    
                </div>
               

                
                
            </div>
</asp:Content>
