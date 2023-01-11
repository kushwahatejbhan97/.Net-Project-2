<%@ Page Title="" Language="C#" MasterPageFile="~/panel.Master" AutoEventWireup="true" CodeBehind="videoGallery.aspx.cs" Inherits="balajiEstate.videoGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section class="short-image no-padding agency">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-12 short-image-title">
					<h5 class="subtitle-margin second-color">Our</h5>
					<h1 class="second-color">Video Gallery</h1>
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>

    </section>

    <section class="section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="row">

                            <center><video width="500" height="300"  controls muted>
                                        <source src="/img/2.mp4" type="video/mp4">
                                    </video>
                            </center>

                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
