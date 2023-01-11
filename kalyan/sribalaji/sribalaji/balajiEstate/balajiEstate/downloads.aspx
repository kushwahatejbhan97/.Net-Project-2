<%@ Page Title="" Language="C#" MasterPageFile="~/panel.Master" AutoEventWireup="true" CodeBehind="downloads.aspx.cs" Inherits="balajiEstate.downloads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function openTab(th) {
        window.open(th.name, '_blank');
    }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section class="short-image no-padding agency">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-12 short-image-title">
					<h5 class="subtitle-margin second-color">useful</h5>
					<h1 class="second-color">Downloads</h1>
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>
    </section>

        	<section class="section-light section-top-shadow ">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="row">
						<div class="col-xs-6">
							<div class="details-title pull-left">
								<h3 class="title-negative-margin">Application Form<span class="special-color">.</span></h3>
								<div class="details-agency-address">
									<i class="fa fa-map-marker"></i>
									<span>Download</span>
								</div>
							</div>
							<div class="clearfix"></div>	
							<div class="title-separator-primary"></div>
							
							<div class="row margin-top-60">
								<div class="col-xs-12">
									<img src="img/applicationform.jpg" alt=""  style="height:600px;border:2px solid lightgray;"/>
                                    <div class="clearfix"></div>
								</div>
							</div>

                            <div class="row margin-top-15">
								<div class="col-xs-12 ">
                                    <a onClick="openTab(this)" href="#" name="/img/app.pdf" class="button-alternative margin-top-15">
								        <span>Download Application Form</span>
								        <div class="button-triangle"></div>
								        <div class="button-triangle2"></div>
								        <div class="button-icon"><i class="fa fa-search"></i></div>
							        </a>
                                </div>
                            </div>
							
	                    <div class="clearfix"></div>
						</div>


                        <div class="col-xs-6">
							<div class="details-title pull-left">
								<h3 class="title-negative-margin">Registration Form<span class="special-color">.</span></h3>
								<div class="details-agency-address">
									<i class="fa fa-map-marker"></i>
									<span>Download</span>
								</div>
							</div>
							<div class="clearfix"></div>	
							<div class="title-separator-primary"></div>
							
							<div class="row margin-top-60">
								<div class="col-xs-12 col-lg-6">
									<img src="img/reg1.jpg" alt="" style="height:400px;border:2px solid lightgray;"/>
                                    <div class="margin-top-15">
								<div class="col-xs-12 ">
                                    <a onClick="openTab(this)" href="#" name="/img/reg1.pdf" class="button-alternative margin-top-15">
								        <span>Download </span>
								        <div class="button-triangle"></div>
								        <div class="button-triangle2"></div>
								        <div class="button-icon"><i class="fa fa-search"></i></div>
							        </a>
                                </div>
                            </div>
									<div class="clearfix"></div>
								</div>
                                <div class="col-xs-12 col-lg-6">
									<img src="img/reg2.jpg" alt="" style="height:400px;border:2px solid lightgray; "/>
                                    <div class="margin-top-15">
								<div class="col-xs-12 ">
                                    <a onClick="openTab(this)" href="#" name="/img/reg2.pdf" class="button-alternative margin-top-15">
								        <span>Download </span>
								        <div class="button-triangle"></div>
								        <div class="button-triangle2"></div>
								        <div class="button-icon"><i class="fa fa-search"></i></div>
							        </a>
                                </div>
                            </div>
									<div class="clearfix"></div>
								</div>
							</div>
							
	                    <div class="clearfix"></div>
						</div>


                        
                        
					</div>
					
					
				</div>
			</div>



            <div class="row">
				<div class="col-xs-12 margin-top-45">
					<div class="row">
						<div class="col-xs-12">
							<div class="details-title pull-left">
								<h3 class="title-negative-margin">Sri Balaji Nagar <span class="special-color">Brochure.</span></h3>
								<div class="details-agency-address">
									<i class="fa fa-map-marker"></i>
									<span>Download</span>
								</div>
							</div>
							<div class="clearfix"></div>	
							<div class="title-separator-primary"></div>
							
							<div class="row margin-top-60">
								<div class="col-xs-12">
									<%--<img src="/img/runnbro.pdf" alt=""  style="height:600px;border:2px solid lightgray;"/>--%>
                                    <object data="/img/runnbro.pdf" style="width:100%; height:800px;border:2px solid lightgray;"></object>
                                    <div class="clearfix"></div>
								</div>
							</div>

                            <div class="row margin-top-15">
								<div class="col-xs-12 ">
                                    <a onClick="openTab(this)" href="#" name="/img/runnbro.pdf" class="button-alternative margin-top-15">
								        <span>Download Brochure</span>
								        <div class="button-triangle"></div>
								        <div class="button-triangle2"></div>
								        <div class="button-icon"><i class="fa fa-search"></i></div>
							        </a>
                                </div>
                            </div>
							
	                    <div class="clearfix"></div>
						</div>
                    </div>
				</div>



                <div class="col-xs-12 margin-top-45">
					<div class="row">
						<div class="col-xs-12">
							<div class="details-title pull-left">
								<h3 class="title-negative-margin">Sri Tirumala Nagar <span class="special-color">Brochure.</span></h3>
								<div class="details-agency-address">
									<i class="fa fa-map-marker"></i>
									<span>Download</span>
								</div>
							</div>
							<div class="clearfix"></div>	
							<div class="title-separator-primary"></div>
							
							<div class="row margin-top-60">
								<div class="col-xs-12">
									<%--<img src="/img/runnbro.pdf" alt=""  style="height:600px;border:2px solid lightgray;"/>--%>
                                    <object data="/img/upbro.pdf" style="width:100%; height:800px;border:2px solid lightgray;"></object>
                                    <div class="clearfix"></div>
								</div>
							</div>

                            <div class="row margin-top-15">
								<div class="col-xs-12 ">
                                    <a onClick="openTab(this)" href="#" name="/img/upbro.pdf" class="button-alternative margin-top-15">
								        <span>Download Brochure</span>
								        <div class="button-triangle"></div>
								        <div class="button-triangle2"></div>
								        <div class="button-icon"><i class="fa fa-search"></i></div>
							        </a>
                                </div>
                            </div>
							
	                    <div class="clearfix"></div>
						</div>
                    </div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
