<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="allumni.aspx.cs" Inherits="Mastercraft.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
#certificate
{
    background-image: url('/images/Form-Alumini.JPG');
     width:800px;
     height:300px;
     
}

</style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server">
<div class="vikwidget_right vikshadow">
                <div class="vikheader" >
        <div class="pull-left" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy">
                <asp:Label ID="Label2" runat="server" Text="" /></h4>
            
            <div class="vikwidget-body ">
               
                  <asp:Label ID="Label3" runat="server" Text= "" />
                <div class="form-horizontal">
                        
                        <div class="form-group">
                            <span class="col-sm-3" >Enter Roll Number</span><span class="col-sm-1" >:</span>
                            <div class="col-sm-5">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Button ID="Button1" runat="server" Text="  view  " 
                                    class="btn btn-danger" Height="24px" Width="110px" 
                                    style="    padding-top: 0px;" onclick="Button1_Click"/>
                            </div>
                        </div>
                        
                        
                        <div class="form-group">
                            <span class="col-sm-3"></span><span class="col-sm-2"></span>
                            
                        </div>

                        <div class="form-group" runat="server" id="abc"  style=" width:100%;"   >
                        <center style=" color:Red;">
                          <span class="col-sm-6">This Roll Number doesn't exits.</span>
                          </center>
                            
                        </div>

                        <div class="form-group" runat="server" style="  background-image: url('/images/Form-Alumini.JPG'); width:800px;
     height:550px; background-size: cover;" id="certificate" >
                          <span class="col-sm-3"> 
                          
                             </span>
                              <br />
                            
                            <div class="abhi" style=" margin-top:55px; width:700px; margin-left:48%; font-weight:600; color:Maroon; font-size:21px; font-family:Times New Roman; ">
                               
                            <asp:Label ID="Label1" runat="server" style=" text-transform:capitalize" Text=""></asp:Label>
                            <div class=" clearfix" style=" height: 18px;"></div>
                            <asp:Label ID="Label4" style=" text-transform:capitalize"  runat="server"  Text=""></asp:Label>
                           <div class=" clearfix" style=" height: 18px;"></div>
                            <asp:Label ID="Label5"  style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
                           <div class=" clearfix" style=" height: 18px;"></div>
                            <asp:Label ID="Label6"  style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
                            <div class=" clearfix" style=" height: 18px;"></div>
                            <asp:Label ID="Label7"  style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
                          <div class=" clearfix" style=" height: 18px;"></div>
                               <asp:Label ID="Label8" style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
                             <div class=" clearfix" style=" height: 18px;"></div>
                            </div>
                              </div> 
                       

                    </div>
                <hr />
             </div>
        </div>
        
     </div>
            </div>
</form>
</asp:Content>
