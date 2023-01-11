<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditCatImage.aspx.cs" Inherits="DecoratinComplete.Admin.EditCatImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>EDIT PRODUCT</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
                    <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                       
                               <div class="table-responsive">
                                             <table class="table table-bordered table-striped no-margin grd_tble" >
                        <thead>
                            <th>Sl. No.</th>
                            <th>Type</th>
                            <th>Image</th>
                            <th>Upload</th>
                            <th>Action</th>

                        </thead>
     <tbody>

                            <tr>
                                <td>1.</td>
                                <td>Desk Image</td>
                                <td><img src='/Admin/Category/Desktop/<%=Server.UrlDecode(Request.QueryString["CatImgDesk"]) %>'  style="height:80px;width:100px"/></td>
                                <td><asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload><br />
                                 * The image width and height should be  291px * 218px</td>
                                <td><asp:Button ID="BtnDskImg" runat="server" Text="Submit" class="btn btn-dark" OnClick="BtnDskImg_Click" ></asp:Button></td>
                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Mobile Image</td>
                                <td><img src='/Admin/Category/Mobile/<%=Server.UrlDecode(Request.QueryString["CatImgMbl"]) %>'  style="height:80px;width:100px"/></td>
                                <td><asp:FileUpload ID="FileUpload2" runat="server" class="form-control"></asp:FileUpload><br />
                                *  The image width and height should be 160px * 120px</td>
                                <td><asp:Button ID="btnMblImg" runat="server" Text="Submit" class="btn btn-dark" OnClick="btnMblImg_Click" ></asp:Button></td>
                            </tr>
                            </tbody>
                            </table>
                          

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                                    
                                                 
                                                 SelectCommand="SELECT [CatId], [CatName], [CatImgMbl], [CatImgDesk] FROM [Category] WHERE ([CatId] = @CatId)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="CatId" QueryStringField="id" Type="Int32" 
                                                DefaultValue="0" />
                                        </SelectParameters>
                                </asp:SqlDataSource>          
                                        <br />
                                        </div>
                                
                           
                            </div>
                                </div>
                               
                            </div> 
        
                       



                    </div>

              
            </div>
                
             </div>
            </div>

        </div>
</asp:Content>
