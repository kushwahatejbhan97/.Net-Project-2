<%@ Page Title="" Language="C#" MasterPageFile="~/panel.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="balajiEstate.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact-page-1 no-padding">
		<div id="contact-map1"></div>
			<div class="contact1-cont">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="row contact1" style="background-color: rgba(20, 33, 47, 0.81);border: 5px solid #14212F;">
								<div class="col-sm-12">
									<h5 class="subtitle-margin" style="color: white;">get in touch</h5>
									<h1 style="color: white;">Contact Us<span class="special-color">.</span></h1>
									<div class="title-separator-primary"></div>
								</div>
								<div class="col-xs-12 col-md-6 margin-top-45">
									<p class="negative-margin" style="color: white;" >Feel free to contact us anytime</p>
									<address class="contact-info pull-left" style="color: white;">
										<span><i class="fa fa-map-marker"></i> Address  :  16-2-705/10/A/B,<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super Bazar, Chowrasta,<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Malakpet, Hyderabad.<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 500036</span>
										<span><i class="fa fa-phone"></i>Contact no  :  040 6570-1333</span>
                                        <span><i class="fa fa-phone"></i>Contact no  :  8897731126</span>
                                        <span><i class="fa fa-phone"></i>Contact no  :  9347988333</span>
                                        <span><i class="fa fa-envelope fa-sm"></i>Mail  : balajiestateshyd@gmail.com</span>
										<span><i class="fa fa-globe"></i>Website     :  www.srisaibalajiestateshyd.com/</span>
									</address>
								</div>
								<div class="col-xs-12 col-md-6 margin-top-45">
									<form name="contact-from" id="contact-form" action="#" method="get">
											<div id="form-result"></div>
											<input name="name" id="name" type="text" class="input-short2 main-input required,all" placeholder="Your name" />
											<input name="phone" id="phone" type="text" class="input-short2 pull-right main-input required,all" placeholder="Your phone" />
											<input name="mail" id="mail" type="email" class="input-full main-input required,email" placeholder="Your email" />
											<textarea name="message" id="message" class="input-full contact-textarea main-input required,email" placeholder="Your message"></textarea>
											<div class="form-submit-cont">
												<a href="#" class="button-primary pull-right" id="form-submit">
													<span>send</span>
													<div class="button-triangle"></div>
													<div class="button-triangle2"></div>
													<div class="button-icon"><i class="fa fa-paper-plane"></i></div>
												</a>
											<div class="clearfix"></div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    </section>
</asp:Content>
