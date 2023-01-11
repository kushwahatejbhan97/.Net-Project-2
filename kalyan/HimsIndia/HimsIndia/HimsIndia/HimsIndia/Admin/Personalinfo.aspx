<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Personalinfo.aspx.cs" Inherits="HimsIndia.Admin.Personalinfo" %>
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


                             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="table table-bordered table-responsive table-condensed" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." DataKeyNames="ModelId">
                <Columns>
                    <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height"></asp:BoundField>
                    <asp:BoundField DataField="DressSize" HeaderText="DressSize" SortExpression="DressSize"></asp:BoundField>
                    <asp:BoundField DataField="Waist" HeaderText="Waist" SortExpression="Waist"></asp:BoundField>
                    <asp:BoundField DataField="ShoeSize" HeaderText="ShoeSize" SortExpression="ShoeSize"></asp:BoundField>
                    <asp:BoundField DataField="HairColor" HeaderText="HairColor" SortExpression="HairColor"></asp:BoundField>
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight"></asp:BoundField>
                    <asp:BoundField DataField="Chest" HeaderText="Chest" SortExpression="Chest"></asp:BoundField>
                    <asp:BoundField DataField="Hips" HeaderText="Hips" SortExpression="Hips"></asp:BoundField>
                    <asp:BoundField DataField="EyeColor" HeaderText="EyeColor" SortExpression="EyeColor"></asp:BoundField>
                    <asp:BoundField DataField="SkinColor" HeaderText="SkinColor" SortExpression="SkinColor"></asp:BoundField>
                    <asp:BoundField DataField="ModelId" HeaderText="ModelId" InsertVisible="False" ReadOnly="True" SortExpression="ModelId"></asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
                            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbhismindia %>" SelectCommand="SELECT [Height], [DressSize], [Waist], [ShoeSize], [HairColor], [Weight], [Chest], [Hips], [EyeColor], [SkinColor], [ModelId] FROM [Applications]" DeleteCommand="DELETE FROM [Applications] WHERE [ModelId] = @ModelId" InsertCommand="INSERT INTO [Applications] ([Height], [DressSize], [Waist], [ShoeSize], [HairColor], [Weight], [Chest], [Hips], [EyeColor], [SkinColor]) VALUES (@Height, @DressSize, @Waist, @ShoeSize, @HairColor, @Weight, @Chest, @Hips, @EyeColor, @SkinColor)" UpdateCommand="UPDATE [Applications] SET [Height] = @Height, [DressSize] = @DressSize, [Waist] = @Waist, [ShoeSize] = @ShoeSize, [HairColor] = @HairColor, [Weight] = @Weight, [Chest] = @Chest, [Hips] = @Hips, [EyeColor] = @EyeColor, [SkinColor] = @SkinColor WHERE [ModelId] = @ModelId">
                <DeleteParameters>
                    <asp:Parameter Name="ModelId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Height" Type="String" />
                    <asp:Parameter Name="DressSize" Type="String" />
                    <asp:Parameter Name="Waist" Type="String" />
                    <asp:Parameter Name="ShoeSize" Type="String" />
                    <asp:Parameter Name="HairColor" Type="String" />
                    <asp:Parameter Name="Weight" Type="String" />
                    <asp:Parameter Name="Chest" Type="String" />
                    <asp:Parameter Name="Hips" Type="String" />
                    <asp:Parameter Name="EyeColor" Type="String" />
                    <asp:Parameter Name="SkinColor" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Height" Type="String" />
                    <asp:Parameter Name="DressSize" Type="String" />
                    <asp:Parameter Name="Waist" Type="String" />
                    <asp:Parameter Name="ShoeSize" Type="String" />
                    <asp:Parameter Name="HairColor" Type="String" />
                    <asp:Parameter Name="Weight" Type="String" />
                    <asp:Parameter Name="Chest" Type="String" />
                    <asp:Parameter Name="Hips" Type="String" />
                    <asp:Parameter Name="EyeColor" Type="String" />
                    <asp:Parameter Name="SkinColor" Type="String" />
                    <asp:Parameter Name="ModelId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


    </div>
                    </div>
                   
                </div>
            </div>
           
        </div>
    </div>
</asp:Content>
