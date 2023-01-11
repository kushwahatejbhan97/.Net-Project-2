<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddModel.aspx.cs" Inherits="HimsIndia.Admin.AddModel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="page-content">
        <div class="container-fluid">
            <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Search Models</h4>

                                  

                                </div>
                            </div>
                        </div>
            <div class="row" >
                            
                            
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtphone" CssClass="form-control" placeholder="Enter Mobile Number" runat="server"></asp:TextBox>
                                
                            </div>
                            <div class="col-lg-2">
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" 
                                    Text="Search" ValidationGroup="OrderSearch" onclick="Button2_Click" />
                            </div>

                         
                               </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-12">Edit Delete Model</h4>
                           

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
                                    
                                    <asp:TemplateField ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>

                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                               
                                    
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
                            <br />

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
