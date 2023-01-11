<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HimsIndia.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/app.min.css" rel="stylesheet" />
    <link href="assets/css/icons.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     
    <div class="page-content">
                    <div class="container-fluid">
          
                    
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Dashboard</h4>

                                  

                                </div>
                            </div>
                        </div>
                       

                        <div class="row">
                            
                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted font-weight-medium">Number of Models</p>
                                                        <h4 class="mb-0" ID="MealServed" runat="server" >
                                                            <asp:Label ID="lblmodels" runat="server" Text="0000"></asp:Label>
                                                        </h4>
                                                        
                                                    </div>

                                                    <div class="mini-stat-icon avatar-sm rounded-circle bg-primary align-self-center">
                                                        <span class="avatar-title">
                                                             <i class="bx bx-user  font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted font-weight-medium">Number of Artist</p>
                                                        <h4 class="mb-0" ID="Revenue" runat="server" >
                                                         <asp:Label ID="lblArtist" runat="server" Text="">0000</asp:Label>
                                                        </h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-user  font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted font-weight-medium">Numbe of Clients</p>
                                                        <h4 class="mb-0" ID="H2" runat="server" >
                                                            <asp:Label ID="lblclients" runat="server" Text=""></asp:Label>
                                                        </h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-user  font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                                <!-- end row -->

                                
                            </div>
                        </div>
                       
                       <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Latest Model Applications</h4>
                                        
                         
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                            
                                                   
                                           </table>
                                        </div>
                                         
                                         <asp:GridView ID="GridView11" runat="server" AllowPaging="True" AllowSorting="True"  AutoGenerateColumns="False" DataKeyNames="ModelId"
                                class="table table-bordered table-responsive table-condensed" DataSourceID="SqlDataSource1"  EmptyDataText="There are no data records to display.">
                                <Columns>
                                     <asp:HyperLinkField DataNavigateUrlFields="ModelId"
                                                    DataNavigateUrlFormatString="AddModelImage.aspx?ModelId={0}"
                                                    DataTextField="ModelId" HeaderText="ModelId" />
                                    
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender"></asp:BoundField>
                                         
                                    <asp:TemplateField HeaderText="Image1" SortExpression="Image1">
 
                                        <ItemTemplate>
                                           <img src='Model/<%# Eval("Image1") %>' class="img-fluid" style="    max-height: 70px;" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField DataNavigateUrlFields="ModelId"
                                                    DataNavigateUrlFormatString="/Models/Default.aspx?ModelId={0}"
                                                   Text="Get URL" HeaderText="URL" />
                                    
                                    
                               
                                    
                                </Columns>
                            </asp:GridView>


                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbhismindia %>" DeleteCommand="DELETE FROM [Applications] WHERE [ModelId] = @ModelId" InsertCommand="INSERT INTO [Applications] ([FirstName], [LastName], [Email], [Phone], [Gender], [Image1]) VALUES (@FirstName, @LastName, @Email, @Phone, @Gender, @Image1)" SelectCommand="SELECT [FirstName], [LastName], [Email], [Phone], [Gender], [ModelId], [Image1] FROM [Applications]" UpdateCommand="UPDATE [Applications] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Phone] = @Phone, [Gender] = @Gender, [Image1] = @Image1 WHERE [ModelId] = @ModelId">
                               <SelectParameters>
                                   
                                  
                                   
                               </SelectParameters>
                                
                                <DeleteParameters>
                                    <asp:Parameter Name="ModelId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="FirstName" Type="String" />
                                    <asp:Parameter Name="LastName" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Phone" Type="String" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Image1" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="FirstName" Type="String" />
                                    <asp:Parameter Name="LastName" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Phone" Type="String" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Image1" Type="String" />
                                    <asp:Parameter Name="ModelId" Type="Int32" />

                                </UpdateParameters>
                            </asp:SqlDataSource>

                                       
                                        
                                        
                                         


                                       
                                       


                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       
                    </div>
                   
                </div>






    <script src="assets/libs/jquery/jquery.min.js"></script>
    <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        <script src="assets/libs/parsleyjs/parsley.min.js"></script>
        <script src="assets/js/pages/form-validation.init.js"></script>
        <script src="assets/js/app.js"></script>
</asp:Content>
