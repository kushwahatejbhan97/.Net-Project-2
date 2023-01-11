<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="video_gallery.aspx.cs" Inherits="Mastercraft.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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

<h2>AISM Videos</h2>
<div class=" col-lg-5">
      <asp:DataList ID="data" runat="server" 
                 DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" ClientIDMode="Static"
                 RepeatColumns="3" >
                  <ItemTemplate>
     
	<%# Eval("iframe")%>
</div>						

</ItemTemplate>
				            </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>"
                         ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>"
                         
                         SelectCommand="SELECT [iframe] FROM [aismtc_video] ORDER BY [id] DESC">
                     </asp:SqlDataSource>


</asp:Content>
