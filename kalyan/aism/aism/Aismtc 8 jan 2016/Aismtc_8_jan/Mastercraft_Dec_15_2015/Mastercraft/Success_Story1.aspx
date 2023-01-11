<%@ Page Title="" Language="C#" MasterPageFile="~/Testimonials.Master" AutoEventWireup="true" CodeBehind="Success_Story1.aspx.cs" Inherits="Mastercraft.Success_Story1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#data').after('<div id="nav" class="pagination"></div>');
            var rowsShown = 4;
            var rowsTotal = $('#data tbody tr').length;
            var numPages = rowsTotal / rowsShown;
            for (i = 0; i < numPages; i++) {
                var pageNum = i + 1;
                $('#nav').append('<li><a href="#" rel="' + i + '">' + pageNum + '</a> </li> ');
            }
            $('#data tbody tr').hide();
            $('#data tbody tr').slice(0, rowsShown).show();
            $('#nav li:first').addClass('active');
            $('#nav a').bind('click', function () {

                $('#nav li').removeClass('active');
                $(this).addClass('active');
                var currPage = $(this).attr('rel');
                var startItem = currPage * rowsShown;
                var endItem = startItem + rowsShown;
                $('#data tbody tr').css('opacity', '0.0').hide().slice(startItem, endItem).
                        css('display', 'table-row').animate({ opacity: 1 }, 300);
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div class="vikwidget_right vikshadow">
                <div class="vikheader" >
        <div class="" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy">Success Stories</h4>
            <br />
            
                 <div class="col-lg-12">
                
				<div class="col-md-12">
                <asp:DataList ID="data" runat="server" 
                 DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" ClientIDMode="Static"
                 RepeatColumns="4" >
                  <ItemTemplate>
					<div class="col-md-3">
                        <img src="uploads/<%# Eval("original_url") %>"    style="width:200px;"/> 
                         
					</div>
                     </ItemTemplate>
				            </asp:DataList>
					<div class="clearfix"> </div>
				</div>
			
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>"
                         ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>"
                         
                         SelectCommand="SELECT [original_url], [url] FROM [aismtc_success] ORDER BY [success_id] DESC">
                     </asp:SqlDataSource>
                 </div>
			</div>
            
               
             
        </div>
        
     </div>







</asp:Content>
