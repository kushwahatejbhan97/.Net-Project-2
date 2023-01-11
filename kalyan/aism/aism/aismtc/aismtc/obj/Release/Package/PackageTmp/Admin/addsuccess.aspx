<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addsuccess.aspx.cs" Inherits="aismtc.Admin.addsuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="page-content">
                    <div class="container-fluid">
          
                    
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Add Success Stories</h4>

                                  

                                </div>
                            </div>
                        </div>
                       

                        <div class="row">
                            
                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                          
                               <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >Image-1</label>
                                    <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                    
                                    

                                </div>
                                
                                 <%--   <div class="col-sm-6 col-md-6">
                                    <label >Image-2</label>
                                        <asp:FileUpload class="form-control" ID="FileUpload2" runat="server" />
                                   

                                </div>--%>
                                </div>
                                </div>
                              <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >File Name </label>
                                    
                                   <asp:TextBox ID="txtfilename" placeholder="*Enter File Name" MaxLength="50" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                  
                                 
                                </div>
                                



                                    <div class="col-sm-6 col-md-6">
                                    <label >Author</label>
                                          <asp:TextBox ID="txtAuthor" placeholder="*Enter Author" MaxLength="200" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                   
                                  
                                </div>
                                </div>
                                </div>

                                                          <div class="form-group">
                                <div class="row">
                                
                                    <div class="col-sm-6 col-md-6">
                                    <label >Date </label>
                                    
                                   <asp:TextBox ID="txtdate" placeholder="*Enter Date" MaxLength="200" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                    
                                 
                                </div>


                                    <div class="col-sm-6 col-md-6">
                                    <label >Original Url </label>
                                    
                                   <asp:TextBox ID="txtOriginalUrl" placeholder="*Enter URL" MaxLength="200" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                    
                                 
                                </div>
                                 </div>
                                </div>

                                
                                  <div class="form-group" style="text-align:center; padding-top:2%">
                                    <asp:Button ID="Button1" ValidationGroup="abc" CssClass="btn btn-primary" 
                                            runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>
                                    </div>
                                                        
                                                   

                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                

                                
                            </div>
                        </div>
                       
                       
                        
                       
                    </div>

                    <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-12">Edit Delete Success Story</h4>
                                        
                         
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                               
                                               
                                                
                                           </table>
                                        </div>
                                         
                                         

                                       
                                        
                                        
                                        <br />
                                        <br />
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                                            class="table table-bordered table-responsive table-condensed" DataKeyNames="success_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="success_id" HeaderText="success_id" InsertVisible="False" ReadOnly="True" SortExpression="success_id" />
                                                <asp:BoundField DataField="file_name" HeaderText="file_name" SortExpression="file_name" />
                                                <%--<asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />--%>
                                                <asp:TemplateField HeaderText="Image"  SortExpression="url" >
                                                    <ItemTemplate>
                                                         <img src='/Admin/success/<%# Eval("url") %>' class="img-responsive" style="width:100px"/>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                               

                                                   
                                               
                                                <asp:BoundField DataField="original_url" HeaderText="original_url" SortExpression="original_url" />
                                               
                                              <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete this event?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    <ControlStyle CssClass="btn btn-warning" />
                                                </asp:TemplateField>
                                               
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbAismConnectionString1 %>" DeleteCommand="DELETE FROM [aismtc_success] WHERE [success_id] = @success_id" InsertCommand="INSERT INTO [aismtc_success] ([file_name], [url], [author], [date], [original_url]) VALUES (@file_name, @url, @author, @date, @original_url)" SelectCommand="SELECT [success_id], [file_name], [url], [author], [date], [original_url] FROM [aismtc_success]" UpdateCommand="UPDATE [aismtc_success] SET [file_name] = @file_name, [url] = @url, [author] = @author, [date] = @date, [original_url] = @original_url WHERE [success_id] = @success_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="success_id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="file_name" Type="String" />
                                                <asp:Parameter Name="url" Type="String" />
                                                <asp:Parameter Name="author" Type="String" />
                                                <asp:Parameter Name="date" Type="String" />
                                                <asp:Parameter Name="original_url" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="file_name" Type="String" />
                                                <asp:Parameter Name="url" Type="String" />
                                                <asp:Parameter Name="author" Type="String" />
                                                <asp:Parameter Name="date" Type="String" />
                                                <asp:Parameter Name="original_url" Type="String" />
                                                <asp:Parameter Name="success_id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                         
                                         

                                       
                                        
                                        
                                        <br />


                                    </div>
                                </div>
                            </div>
                        </div>
                   
                </div>
              
                
               
  
            </div>

</asp:Content>
