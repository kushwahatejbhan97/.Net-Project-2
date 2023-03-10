<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Change-image-master-tag.aspx.cs" Inherits="LocalPandit.Admin.Change_image_master_tag" %>
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
                               
                                <td><img src='/upload_tag/icon/<%=Server.UrlDecode(Request.QueryString["CatKeyid"]) %>.jpg' style="height:120px; width:200px" /></td>
                                <td><asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload></td>
                                <td><asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" 
                                        onclick="Button1_Click"></asp:Button></td>
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
        <p>2017 © Local Pandit</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>
</asp:Content>
