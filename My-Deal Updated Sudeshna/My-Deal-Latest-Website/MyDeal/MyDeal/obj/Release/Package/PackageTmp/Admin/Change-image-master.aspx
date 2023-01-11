<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Change-image-master.aspx.cs" Inherits="LocalPandit.Admin.Change_image_master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="main-content">
   <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Update Category Icon/Image</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">
                            
                      <table class="table table-bordered table-condensed" >
                        <thead>
                           
                            <th>Icon Image</th>
                            <th>Choose Image</th>
                            <th>Action</th>

                        </thead>
                        <tbody>
                            <tr>
                               
                                
                                <td>
                                    <asp:Image ID="Image1"  runat="server" Width="60" Height="50" /></td>
                                <td><asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload></td>
                                <td><asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" 
                                        onclick="Button1_Click"></asp:Button></td>
                            </tr>
                            
                             
                        </tbody>
                    </table>
                           
                    <table class="table table-bordered table-condensed" >
                        <thead>
                           
                            <th>Cover Image</th>
                            <th>Choose Image</th>
                            <th>Action</th>

                        </thead>
                        <tbody>
                           
                             <tr>
                               
                                

                                 <td>
                                    <asp:Image ID="Image2"  runat="server" Width="60" Height="50" /></td>
                                <td><asp:FileUpload ID="FileUpload2" runat="server" class="form-control"></asp:FileUpload></td>
                                <td><asp:Button ID="Button4" runat="server" Text="Submit" class="btn btn-primary" onclick="Button2_Click"></asp:Button></td>
                            </tr>
                             
                        </tbody>
                    </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p>2022 © My-Deal</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>

</asp:Content>
