<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="HimsIndia.Admin.Images" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-12">Edit Delete Artist</h4>


                            <div class="table-responsive">
                                <table class="table table-centered table-nowrap mb-0">
                                </table>
                            </div>


                             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="table table-bordered table-responsive table-condensed" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." DataKeyNames="ImageId">
                <Columns>
                    <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId"></asp:BoundField>
                    <asp:TemplateField HeaderText="Image2" SortExpression="URL">
                        <EditItemTemplate>
                             <img src='Models/<%# Eval("URL") %>' class="img-fluid" height="50px" width="90px"/>
                           
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='Models/<%# Eval("URL") %>' class="img-fluid" height="50px" width="90px"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image3" SortExpression="URL1">
                        <EditItemTemplate>
                            <img src='Models/<%# Eval("URL1") %>' class="img-fluid" height="50px" width="90px"/>
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='Models/<%# Eval("URL1") %>' class="img-fluid" height="50px" width="90px"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image4" SortExpression="URL2">
                        <EditItemTemplate>
                            <img src='Models<%# Eval("URL2") %>' class="img-fluid" height="50px" width="90px"/>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='Models<%# Eval("URL2") %>' class="img-fluid" height="50px" width="90px"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image5" SortExpression="URL3">
                        <EditItemTemplate>
                            <img src='Models<%# Eval("URL3") %>' class="img-fluid" height="50px" width="90px"/>
                        </EditItemTemplate>
                        <ItemTemplate>

                             <img src='Models<%# Eval("URL3") %>' class="img-fluid" height="50px" width="90px"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
                            <br />
                            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbhismindia %>" SelectCommand="SELECT [ModelId], [URL], [URL1], [URL2], [URL3], [ImageId] FROM [Images]" DeleteCommand="DELETE FROM [Images] WHERE [ImageId] = @ImageId" InsertCommand="INSERT INTO [Images] ([ModelId], [URL], [URL1], [URL2], [URL3]) VALUES (@ModelId, @URL, @URL1, @URL2, @URL3)" UpdateCommand="UPDATE [Images] SET [ModelId] = @ModelId, [URL] = @URL, [URL1] = @URL1, [URL2] = @URL2, [URL3] = @URL3 WHERE [ImageId] = @ImageId">
                <DeleteParameters>
                    <asp:Parameter Name="ImageId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ModelId" Type="Int32" />
                    <asp:Parameter Name="URL" Type="String" />
                    <asp:Parameter Name="URL1" Type="String" />
                    <asp:Parameter Name="URL2" Type="String" />
                    <asp:Parameter Name="URL3" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ModelId" Type="Int32" />
                    <asp:Parameter Name="URL" Type="String" />
                    <asp:Parameter Name="URL1" Type="String" />
                    <asp:Parameter Name="URL2" Type="String" />
                    <asp:Parameter Name="URL3" Type="String" />
                    <asp:Parameter Name="ImageId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


    </div>
                    </div>
                   
                </div>
            </div>
           
        </div>
    </div>
</asp:Content>
