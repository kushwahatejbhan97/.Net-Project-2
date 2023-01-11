<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="career.aspx.cs" Inherits="Mastercraft.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.form-group span
{
    margin-top: 5px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="vikwidget_right vikshadow">
                <div class="vikheader" >
        <div class="pull-left" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy">
                <asp:Label ID="Label1" runat="server" Text="" /></h4>
            
            <div class="vikwidget-body ">
                <%--<img src="images/history.JPG" style="height:200px; width:100%;" />--%>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <div class="col-sm-9">
                <form id="form1" runat="server">
                    <div class="form-horizontal">
                        
                        <div class="form-group">
                            <span class="col-sm-3" >Name</span><span class="col-sm-2" >:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3">Email-id</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3">Phone Number</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3">Address</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-sm-3">Reference</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-sm-3">Upload Resume</span><span class="col-sm-2">:</span>
                            <div class="col-sm-8">
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-sm-3"></span><span class="col-sm-2"></span>
                            <div class="col-sm-8">
                                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <span class="col-sm-3"></span><span class="col-sm-2"></span>
                            <div class="col-sm-8">
                                <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" 
                                    onclick="Button1_Click"/>
                            </div>
                        </div>

                    </div>
                </form>
                </div>
             </div>
        </div>
        
     </div>
            </div>

</asp:Content>
