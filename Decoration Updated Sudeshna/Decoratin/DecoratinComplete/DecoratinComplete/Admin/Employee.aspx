<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="DecoratinComplete.Admin.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Executive</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtName">Name</label>
                             <asp:TextBox ID="txtName" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                            
                        </div>
                               <div class="col-md-6">
                            <label for="txtAddress">Address</label>
                             <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                               

                            
                        </div>

                               </div>

                           <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtPhone">Phone No</label>
                             <asp:TextBox ID="txtPhone" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   


                            
                        </div>

                           <div class="col-md-6">
                            <label for="txtAddressProof">Address Proof</label>
                             <asp:TextBox ID="txtAddressProof" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                               
                            </div>
                        </div>

                           <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtPassword">Password</label>
                             <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   


                            
                        </div>

                           
                        </div>

                           </div>

                    <asp:Button ID="btnEmpoyee" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnEmpoyee_Click" />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4> Edit Add Executive</h4>
                    
                </div>
                <div class="form-body" style="overflow-x:scroll;">


                           <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="DID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                               <Columns>
                                   <asp:BoundField DataField="DID" HeaderText="DID" InsertVisible="False" ReadOnly="True" SortExpression="DID" />
                                   <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
                                   <asp:BoundField DataField="Daddress" HeaderText="Daddress" SortExpression="Daddress" />
                                   <asp:BoundField DataField="Dmobile" HeaderText="Dmobile" SortExpression="Dmobile" />
                                   <asp:BoundField DataField="Daddressproof" HeaderText="Daddressproof" SortExpression="Daddressproof" />
                                   <asp:BoundField DataField="Dpassword" HeaderText="Dpassword" SortExpression="Dpassword" />
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
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" DeleteCommand="DELETE FROM [Delivery] WHERE [DID] = @DID" InsertCommand="INSERT INTO [Delivery] ([Dname], [Daddress], [Dmobile], [Daddressproof], [Dpassword]) VALUES (@Dname, @Daddress, @Dmobile, @Daddressproof, @Dpassword)" SelectCommand="SELECT [DID], [Dname], [Daddress], [Dmobile], [Daddressproof], [Dpassword] FROM [Delivery]" UpdateCommand="UPDATE [Delivery] SET [Dname] = @Dname, [Daddress] = @Daddress, [Dmobile] = @Dmobile, [Daddressproof] = @Daddressproof, [Dpassword] = @Dpassword WHERE [DID] = @DID">
                               <DeleteParameters>
                                   <asp:Parameter Name="DID" Type="Int32" />
                               </DeleteParameters>
                               <InsertParameters>
                                   <asp:Parameter Name="Dname" Type="String" />
                                   <asp:Parameter Name="Daddress" Type="String" />
                                   <asp:Parameter Name="Dmobile" Type="String" />
                                   <asp:Parameter Name="Daddressproof" Type="String" />
                                   <asp:Parameter Name="Dpassword" Type="String" />
                               </InsertParameters>
                               <UpdateParameters>
                                   <asp:Parameter Name="Dname" Type="String" />
                                   <asp:Parameter Name="Daddress" Type="String" />
                                   <asp:Parameter Name="Dmobile" Type="String" />
                                   <asp:Parameter Name="Daddressproof" Type="String" />
                                   <asp:Parameter Name="Dpassword" Type="String" />
                                   <asp:Parameter Name="DID" Type="Int32" />
                               </UpdateParameters>
                           </asp:SqlDataSource>



                   
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>
</asp:Content>

