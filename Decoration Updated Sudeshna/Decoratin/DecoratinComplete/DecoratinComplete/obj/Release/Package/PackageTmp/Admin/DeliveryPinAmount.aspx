<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeliveryPinAmount.aspx.cs" Inherits="DecoratinComplete.Admin.DeliveryPinAmount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>ADD PIN AREA</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtPin">Pin</label>
                             <asp:TextBox ID="txtPin" CssClass="form-control" placeholder="Enter PinCode" runat="server"></asp:TextBox>
                                   

                            
                        </div>
                               <div class="col-md-6">
                            <label for="txtArea">Area</label>
                             <asp:TextBox ID="txtArea" CssClass="form-control" placeholder="Enter Area Name For This Pin Code" runat="server"></asp:TextBox>
                               

                            
                        </div>

                               </div>

                           

                           </div>

                    <asp:Button ID="btnDeliveryPinAmount" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnDeliveryPinAmount_Click" />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>


    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>EDIT PIN AREA</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
                   

                  
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
                            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        DeleteCommand="DELETE FROM [Pin_Amount_Table] WHERE [id] = @id" 
                        
                        SelectCommand="SELECT [id], [pin], [Area] FROM [Pin_Amount_Table]" 
                        UpdateCommand="UPDATE [Pin_Amount_Table] SET [pin] = @pin, [Area] = @Area WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        
                        <UpdateParameters>
                            <asp:Parameter Name="pin" Type="Int32" />
                            <asp:Parameter Name="Area" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                   

                  
            </div>
                
             </div>
            </div>

        </div>
</asp:Content>
