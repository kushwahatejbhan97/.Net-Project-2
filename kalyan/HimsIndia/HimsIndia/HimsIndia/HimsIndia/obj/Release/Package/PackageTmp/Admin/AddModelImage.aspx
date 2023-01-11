<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddModelImage.aspx.cs" Inherits="HimsIndia.Admin.AddModelImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


    <div class="page-content">
                    <div class="container-fluid">

                       
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Add Model Images</h4>

                                   
                                    

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                           
                                             
                                        </ol>
                                    </div>
                                    
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
                                    <label >Model Name</label>
                                    
                                   
                                    <asp:TextBox ID="txtFname" class="form-control" placeholder="First Name *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFname" ErrorMessage="Please Enter Your Name" ForeColor="red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <label >Model Image 1</label>
                                    
                                    <asp:FileUpload ID="FileUpload1" ValidationGroup="abc" class="form-control" runat="server" />
                                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="FileUpload1" ValidationGroup="abc" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Upload Desktop Image"></asp:RequiredFieldValidator>
                                 <span > * The image width and height should be 480px * 360px </span>--%>
                                </div>
                                </div>
                                </div>
                              
                                  
                                             <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >Model Image 2</label>
                                     <asp:FileUpload ID="FileUpload2" ValidationGroup="abc" class="form-control" runat="server" />
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" Text="*Required" ForeColor="Red" Display="Dynamic" ControlToValidate="FileUpload3" ValidationGroup="brand" ErrorMessage=" Required "></asp:RequiredFieldValidator>--%>
                                   

                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <label >Model Image 3</label>
                                    
                                    <asp:FileUpload ID="FileUpload3" ValidationGroup="abc" class="form-control" runat="server" />
                                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="FileUpload1" ValidationGroup="abc" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Upload Desktop Image"></asp:RequiredFieldValidator>
                                 <span > * The image width and height should be 480px * 360px </span>--%>
                                </div>
                                </div>
                                </div>           
                                                   
<div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >Model Image 4</label>
                                     <asp:FileUpload ID="FileUpload4" ValidationGroup="abc" class="form-control" runat="server" />
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" Text="*Required" ForeColor="Red" Display="Dynamic" ControlToValidate="FileUpload3" ValidationGroup="brand" ErrorMessage=" Required "></asp:RequiredFieldValidator>--%>
                                   

                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <label >Model Image 5</label>
                                    
                                    <asp:FileUpload ID="FileUpload5" ValidationGroup="abc" class="form-control" runat="server" />
                                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="FileUpload1" ValidationGroup="abc" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Upload Desktop Image"></asp:RequiredFieldValidator>
                                 <span > * The image width and height should be 480px * 360px </span>--%>
                                </div>
                                </div>
                                </div>
                                                    

<div class="form-group" style="text-align:center; padding-top:2%">
                                    <asp:Button ID="Button1" ValidationGroup="abc" CssClass="btn btn-primary" 
                                            runat="server" Text="Submit" onclick="Button1_Click"></asp:Button>
                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <!-- end row -->

                                
                            </div>
                        </div>  
                    </div>
                    </div> 

        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-12">Edit Delete Model Image</h4>
                                        
                         
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                               
                                               
                                                
                                               
                                           </table>
                                        </div>
                                         
                                        
                                        
                                        
                                         
                                        
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  AllowSorting="True" class="table table-bordered table-condensed table-responsive" AutoGenerateColumns="False" DataKeyNames="ModelSliderId" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:HyperLinkField DataNavigateUrlFields="ModelId" 
                      DataNavigateUrlFormatString="AddModelImage.aspx?ModelId={0}" 
                      DataTextField="ModelId" HeaderText="Model ID" />
                                               
                                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                                                <asp:BoundField DataField="ModelSliderId" HeaderText="ModelSliderId" SortExpression="ModelSliderId" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                                                <asp:TemplateField HeaderText="ALT" SortExpression="ALT">
                                                    
                                                    <ItemTemplate>
                                                         <img src='/Admin/Model/<%# Eval("ALT") %>' class="img-fluid" style="    max-height: 70px;" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbhismindia %>" DeleteCommand="DELETE FROM [ModelSlider] WHERE [ModelSliderId] = @ModelSliderId" InsertCommand="INSERT INTO [ModelSlider] ([ModelId], [Title], [ALT]) VALUES (@ModelId, @Title, @ALT)" SelectCommand="SELECT [ModelId], [Title], [ModelSliderId], [ALT] FROM [ModelSlider]" UpdateCommand="UPDATE [ModelSlider] SET [ModelId] = @ModelId, [Title] = @Title, [ALT] = @ALT WHERE [ModelSliderId] = @ModelSliderId">
                                            
                                            <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="ModelId" 
                            QueryStringField="ModelId" Type="Int32" />
                    </SelectParameters>
                                            <DeleteParameters>
                                                <asp:Parameter Name="ModelSliderId" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="ModelId" Type="Int32" />
                                                <asp:Parameter Name="Title" Type="String" />
                                                <asp:Parameter Name="ALT" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="ModelId" Type="Int32" />
                                                <asp:Parameter Name="Title" Type="String" />
                                                <asp:Parameter Name="ALT" Type="String" />
                                                <asp:Parameter Name="ModelSliderId" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                         
                                        
                                        
                                        
                                         
                                        
                                        <br />


                                    </div>
                                </div>
                            </div>
                        </div>
                </div>

</asp:Content>
