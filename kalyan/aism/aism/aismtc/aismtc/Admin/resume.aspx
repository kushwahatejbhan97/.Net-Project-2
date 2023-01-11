<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="resume.aspx.cs" Inherits="aismtc.Admin.resume" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <div class="row" style="margin-top:130px !important">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-12">Edit Delete Employee</h4>
                                        
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                               
                                               
                                                
                                           </table>
                                        </div>
                                     
         




        <asp:GridView ID="GridView1" class="table table-bordered table-responsive table-condensed" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="carrer_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="carrer_id" HeaderText="carrer_id" InsertVisible="False" ReadOnly="True" SortExpression="carrer_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="reference" HeaderText="reference" SortExpression="reference" />
                <%--<asp:BoundField DataField="upload_resume" HeaderText="upload_resume" SortExpression="upload_resume" />--%>
                <asp:TemplateField HeaderText="Resume" SortExpression="upload_resume">
                    <ItemTemplate>
                         <a href='/Admin/Resume/<%# Eval("upload_resume") %>' >download</a>
                    </ItemTemplate>
                </asp:TemplateField>
               
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
   
       
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbAismConnectionString1 %>" DeleteCommand="DELETE FROM [aismtc_career] WHERE [carrer_id] = @carrer_id" InsertCommand="INSERT INTO [aismtc_career] ([name], [email], [phone], [address], [reference], [upload_resume]) VALUES (@name, @email, @phone, @address, @reference, @upload_resume)" SelectCommand="SELECT * FROM [aismtc_career]" UpdateCommand="UPDATE [aismtc_career] SET [name] = @name, [email] = @email, [phone] = @phone, [address] = @address, [reference] = @reference, [upload_resume] = @upload_resume WHERE [carrer_id] = @carrer_id">
            <DeleteParameters>
                <asp:Parameter Name="carrer_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="reference" Type="String" />
                <asp:Parameter Name="upload_resume" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="reference" Type="String" />
                <asp:Parameter Name="upload_resume" Type="String" />
                <asp:Parameter Name="carrer_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
  
                                           </div>
                                    </div>
                                </div>
                                        
                   </div>                


</asp:Content>
