<%@ Page Title="" Language="C#" MasterPageFile="~/about_master.Master" AutoEventWireup="true" CodeBehind="aboutus1.aspx.cs" Inherits="Mastercraft.aboutus1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="vikwidget_right ">
                
                <div class="vikheader" >
        <div class="pull-left" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4>
          
            <div class="vikwidget-body ">
                <img src="images/about.jpg" style="height:200px; width:100%;" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="">

                </asp:Label>
             </div>
       
    
       </div>
        
     </div>
            </div>
</asp:Content>
