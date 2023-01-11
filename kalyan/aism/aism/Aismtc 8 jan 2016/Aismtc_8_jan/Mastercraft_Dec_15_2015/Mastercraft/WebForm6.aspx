<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="Mastercraft.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<head>


<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
</style>

</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



   	   <div class="main">
   	     <div class="wrap">
   	       <div class="abstract">
		   	 <ul class="breadcrumb breadcrumb__t"><a class="home" href="#">Gallery</a>  / About</ul>
			  <div class="section group">
				 <div class="cont1 span_2_of_g1">
				      <div class="section group">
						<div class="col_1_of_about-box span_1_of_about-box">
						 <a class="" href="#small-dialog">
                          </span><img src="web/images/g1.jpg" title="continue" alt=""/></a>
		                    
						   		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						    <a class="popup-with-zoom-anim" href="#small-dialog1"><span class="rollover"> </span><img src="web/images/g2.jpg" title="continue" alt=""/></a>
		                    
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog2"><span class="rollover"> </span><img src="web/images/g3.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog2" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g3.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div> 
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
				        <div class="clear"></div> 
					</div>
					<div class="section group">
						<div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog4"><span class="rollover"> </span><img src="web/images/g4.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog4" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g4.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						    <a class="popup-with-zoom-anim" href="#small-dialog5"><span class="rollover"> </span><img src="web/images/g5.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog5" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g5.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog6"><span class="rollover"> </span><img src="web/images/g6.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog6" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g6.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
				        <div class="clear"></div> 
					</div>
					<div class="section group">
						<div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog7"><span class="rollover"> </span><img src="web/images/g7.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog7" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g7.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog8"><span class="rollover"> </span><img src="web/images/g8.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog8" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g8.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog9"><span class="rollover"> </span><img src="web/images/g9.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog9" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g9.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
				        <div class="clear"></div> 
					</div>
					<div class="section group">
						<div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog10"><span class="rollover"> </span><img src="web/images/g10.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog10" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g10.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						    <a class="popup-with-zoom-anim" href="#small-dialog11"><span class="rollover"> </span><img src="web/images/g11.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog11" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g11.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
						 <div class="col_1_of_about-box span_1_of_about-box">
						   <a class="popup-with-zoom-anim" href="#small-dialog12"><span class="rollover"> </span><img src="web/images/g12.jpg" title="continue" alt=""/></a>
		                     <div id="small-dialog12" class="mfp-hide">
							   <div class="pop_up">
							   	  <img src="web/images/g12.jpg" alt=""/>
							   	  <div class="mfp-title">Lorem ipsum est</div>
								</div>
							 </div>  
						   <div class="g_desc">
			                   <div class="g_1">
			                   	<h4 class="no"><a href="#">#125846</a></h4>
			                   	<p class="g_2"><a href="#">Nature</a></p>
			                   </div>
			                   <span class="likes"><a href="#"><img src="web/images/heart.png" title="likes" alt=""> 16</a></span>
			                   <div class="clear"></div>
			               </div>		
					     </div>
				        <div class="clear"></div> 
					</div>
				    <ul class="dc_pagination dc_paginationA dc_paginationA06">
					    <li><a href="#" class="previous">Previous</a></li>
					    <li><a href="#">1</a></li>
					    <li><a href="#" class="current">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li><a href="#">...</a></li>
					    <li><a href="#">19</a></li>
					    <li><a href="#">20</a></li>
					    <li><a href="#" class="next">Next</a></li>
		            </ul>
		</div>
        <div class="labout span_1_of_g1">
			 <h3>Categories</h3>
			 <section  class="sky-form">
					<div class="col col-4">
						<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Abstract</label>
					</div>
					<div class="col col-4">
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Animals/Wildlife</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>The Arts</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Backgrounds/Textures</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Beauty/Fashion</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>Buildings/Landmarks</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Business/Finance</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Celebrities</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Editorial</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Food and Drink</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Healthcare/Medical</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Holidays</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Illustrations/Clip-Art</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Industrial</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Interiors</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Miscellaneous</label>	
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Model Released Only</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nature</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Objects</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Parks/Outdoor</label>	
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>People</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Religion</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Science</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Signs/Symbols</label>	
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sports/Recreation</label>	
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Technology</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Transportation</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vectors</label>
					   <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vintage</label>	
				    </div>
			</section>
		  </div>
		   <div class="clear"></div>	
		  </div>
		</div>
   	 </div>
   	</div>
	<div class="footer">
	   	<div class="wrap">
	   		<div class="copy">
			   <p>© 2014 Template by <a href="http://w3layouts.com" target="_blank"> w3layouts</a></p>
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
