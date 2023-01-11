<%@ Page Title="" Language="C#" MasterPageFile="~/panel.Master" AutoEventWireup="true" CodeBehind="ourProjects.aspx.cs" Inherits="balajiEstate.ourProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section class="short-image no-padding agency" style="background: #152560 url(/img/bgProject.jpg) no-repeat center;">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-12 short-image-title">
					<h5 class="subtitle-margin second-color">Our</h5>
					<h1 class="second-color">Projects</h1>
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>
    </section>

   <section class="section-light">
		
		
		<div class="featured-offers-container">
			<div class="owl-carousel" id="featured-offers-owl">
				<div class="featured-offer-col" >
					<div class="featured-offer-front" style="border:2px solid lightgray">
						<div class="featured-offer-photo">
							<img src="img/2_2.jpg" alt="" />
							<div class="type-container">
								<div class="estate-type">Completed</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
						<div class="featured-offer-text">
							<h4 class="featured-offer-title">Balaji Homes</h4>
							<p>Balaji Homes is located Near GURRAMGUDA, Nadergul, Hyderabad EAST.<br />
                               Inaugurated By : SRI T. Devender Goud, on 10-01-2015.
                            </p>
						</div>
						
					</div>
					<div class="featured-offer-back">
						<div id="featured-map1" class="featured-offer-map"></div>
						<div class="button">	
							<a href="completedProjects.aspx" class="button-primary">
								<span>read more</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-search"></i></div>
							</a>
						</div>
					</div>
					
				</div>
				<div class="featured-offer-col">
					<div class="featured-offer-front" style="border:2px solid lightgray">
						<div class="featured-offer-photo">
							<img src="img/100_2.jpg" alt="" />
							<div class="type-container">
								<div class="estate-type">Running</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
						<div class="featured-offer-text">
							<h4 class="featured-offer-title">Sri Balaji Nagar</h4>
							<p>Sri Balaji Nagar is Located Near Ibrahimpatnam,<br /> 
                                Opp. Tirumala Dairy Products, <br />
                                Gungal, Yachram Mandal,<br />
                                Hyderabad.</p>
						</div>
						
					</div>
					<div class="featured-offer-back">
						<div id="featured-map2" class="featured-offer-map"></div>
							<div class="button">	
							<a href="runningProjects.aspx" class="button-primary">
								<span>read more</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-search"></i></div>
							</a>
						</div>
					</div>
					
				</div>
				<div class="featured-offer-col">
					<div class="featured-offer-front" style="border:2px solid lightgray">
						<div class="featured-offer-photo">
							<img src="img/3.jpg" alt="" />
							<div class="type-container">
								<div class="estate-type">Up Coming</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
						<div class="featured-offer-text">
							<h4 class="featured-offer-title">Sri Tirumala Nagar (Gungal)</h4>
							<p>It Is Located Next to Gurunanak Engineering College,<br />
                                Agapally Village, Yacharam Mandal, Hyderabad.
                                
                            </p>
						</div>
						
					</div>
					<div class="featured-offer-back">
						<div id="featured-map3" class="featured-offer-map"></div>
							<div class="button">	
							<a href="upComingProject.aspx" class="button-primary">
								<span>read more</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-search"></i></div>
							</a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
    </section>
</asp:Content>
