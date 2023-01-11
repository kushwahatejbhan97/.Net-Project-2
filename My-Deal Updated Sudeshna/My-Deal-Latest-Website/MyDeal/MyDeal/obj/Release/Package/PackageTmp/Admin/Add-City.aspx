<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Add-City.aspx.cs" Inherits="MyDeal.Admin.Add_City" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="main-content">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Add City</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal">
                        

                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="username">City Name:</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:TextBox ID="tb_city_name" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_city_name" ValidationGroup="AddCity" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter City Name"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnsignin" runat="server" Text="Submit" ValidationGroup="AddCity"  class="btn btn-primary" OnClick="btnsignin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Edit / Delete City</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">
                            
                            
                            
                            <asp:GridView ID="GridView1" class="table fill-head" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                    <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
                                    <asp:TemplateField ShowHeader="False" HeaderText="Action">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                DeleteCommand="DELETE FROM [Updated_State_City_List] WHERE [ID] = @ID" 
                                InsertCommand="INSERT INTO [Updated_State_City_List] ([ID], [CityName]) VALUES (@ID, @CityName)" 
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List]" 
                                UpdateCommand="UPDATE [Updated_State_City_List] SET [CityName] = @CityName WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="CityName" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CityName" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            
                            
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

         </div>
</asp:Content>
