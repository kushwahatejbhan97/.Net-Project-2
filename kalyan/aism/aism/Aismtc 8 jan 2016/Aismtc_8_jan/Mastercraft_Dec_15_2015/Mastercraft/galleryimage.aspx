<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="galleryimage.aspx.cs" Inherits="Mastercraft.galleryimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




<link rel="stylesheet" type="text/css" media="screen" href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />
<style type="text/css">
    
    
    
    a.fancybox img {
        border: none;
        box-shadow: 0 1px 7px rgba(0,0,0,0.6);
        -o-transform: scale(1,1); -ms-transform: scale(1,1); -moz-transform: scale(1,1); -webkit-transform: scale(1,1); transform: scale(1,1); -o-transition: all 0.2s ease-in-out; -ms-transition: all 0.2s ease-in-out; -moz-transition: all 0.2s ease-in-out; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out;
    } 
    a.fancybox:hover img {
        position: relative; z-index: 999; -o-transform: scale(1.03,1.03); -ms-transform: scale(1.03,1.03); -moz-transform: scale(1.03,1.03); -webkit-transform: scale(1.03,1.03); transform: scale(1.03,1.03);
    }
    
    .span_1_of_about-box {
	width: 30.5%;
}
.col_1_of_about-box {
	display: block;
	float: left;
	margin: 1% 0 1% 3.6%;
}
    
</style>
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
<div class="main">
   	     <div class="wrap">
   	       <div class="abstract">
		   	 <ul class="breadcrumb breadcrumb__t"><a class="home" href="#">Gallery</a>  / About</ul>
			  <div class="section group">
				 <div class="cont1 span_2_of_g1">
				    <div class="section group">
                      <asp:DataList ID="data" runat="server" 
                 DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" ClientIDMode="Static"
                 RepeatColumns="3" >
                  <ItemTemplate>
						<div class="col_1_of_about-box " style="float:left; margin-left:40px;">
						 <a><span class="rollover"> </span><img src="MediaUploader/<%# Eval("original_url") %>" style="width:400px; height:250px;" class="fancybox"  alt=""/></a>
                            
					     </div>
						</ItemTemplate>
				            </asp:DataList>
					</div>
                  
			 <div class="clearfix"></div> 
                     
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>"
                         ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>"
                         
                         SelectCommand="SELECT [original_url] FROM [aismtc_img_upload] ORDER BY [id] DESC">
                     </asp:SqlDataSource>
                 </div>
        
		   <div class="clear"></div>	
		  </div>
		</div>
   	 </div>
   	</div>



    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.pack.min.js"></script>
<script type="text/javascript">
    $(function ($) {
        var addToAll = false;
        var gallery = true;
        var titlePosition = 'inside';
        $(addToAll ? 'img' : 'img.fancybox').each(function () {
            var $this = $(this);
            var title = $this.attr('title');
            var src = $this.attr('data-big') || $this.attr('src');
            var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
            $this.wrap(a);
        });
        if (gallery)
            $('a.fancybox').attr('rel', 'fancyboxgallery');
        $('a.fancybox').fancybox({
            titlePosition: titlePosition
        });
    });
    $.noConflict();
</script>
</asp:Content>
