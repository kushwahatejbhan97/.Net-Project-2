<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddBanner.aspx.cs" Inherits="DecoratinComplete.Admin.AddBanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Banner1 & Banner2 </h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm1BannerTitle">Title</label>
                             <asp:TextBox ID="txtForm1BannerTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtForm1BannerSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtForm1BannerSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm1Url">URL</label>
                             <asp:TextBox ID="txtForm1Url" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                           <div class="col-md-6">
                            <label for="DrpForm1Banner1">Name</label>
                               <asp:DropDownList ID="DrpForm1Banner1" CssClass="form-control" runat="server">
                                   <asp:ListItem Value="1">Banner1</asp:ListItem>
                                   <asp:ListItem Value="2">Banner2</asp:ListItem>
                                   
                               </asp:DropDownList>
                             

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktopForm1">Desktop Image</label>
                            <asp:FileUpload ID="fileDesktopForm1" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 600px * 400px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobileForm1">Mobile Image</label>
                            <asp:FileUpload ID="fileMobileForm1" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 600px * 400px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="btnAddSlider" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnAddSlider_Click" />
                    
                </div>

                
                         
            </div>
    </div>
      </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Banner3</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm2BannerTitle">Title</label>
                             <asp:TextBox ID="txtForm2BannerTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtForm2BannerSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtForm2BannerSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm2Url">URL</label>
                             <asp:TextBox ID="txtForm2Url" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                           <div class="col-md-6">
                            <label for="Drpfrm2">Name</label>
                               <asp:DropDownList ID="Drpfrm2" CssClass="form-control" runat="server">
                                   <asp:ListItem Value="3">Banner3</asp:ListItem>
                                   
                                   
                               </asp:DropDownList>
                             

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktopForm2">Desktop Image</label>
                            <asp:FileUpload ID="FileUploadDskfrm2" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 510px * 620px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobileForm2">Mobile Image</label>
                            <asp:FileUpload ID="FileUploadMobilefrm2" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 510px * 620px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="btnfrm2" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnfrm2_Click"/>
                    
                </div>

                
                         
            </div>
    </div>
      </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Banner4 & Banner5</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm3BannerTitle">Title</label>
                             <asp:TextBox ID="txtForm3BannerTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtForm3BannerSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtForm3BannerSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm3Url">URL</label>
                             <asp:TextBox ID="txtForm3Url" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                           <div class="col-md-6">
                            <label for="Drpfrm3">Name</label>
                               <asp:DropDownList ID="Drpfrm3" CssClass="form-control" runat="server">
                                   <asp:ListItem Value="4">Banner4</asp:ListItem>
                                   <asp:ListItem Value="5">Banner5</asp:ListItem>
                                   
                               </asp:DropDownList>
                             

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktopForm3">Desktop Image</label>
                            <asp:FileUpload ID="fileDesktopForm3" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 650px * 280px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobileForm3">Mobile Image</label>
                            <asp:FileUpload ID="fileMobileForm3" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 650px * 280px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="btnfrm3" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnfrm3_Click"/>
                    
                </div>

                
                         
            </div>
    </div>
      </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Banner6</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm4BannerTitle">Title</label>
                             <asp:TextBox ID="txtForm4BannerTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtForm4BannerSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtForm4BannerSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm4Url">URL</label>
                             <asp:TextBox ID="txtForm4Url" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                           <div class="col-md-6">
                            <label for="Drpfrm4">Name</label>
                               <asp:DropDownList ID="Drpfrm4" CssClass="form-control" runat="server">
                                   <asp:ListItem Value="6">Banner6</asp:ListItem>
                                   
                                   
                               </asp:DropDownList>
                             

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktopForm4">Desktop Image</label>
                            <asp:FileUpload ID="fileDesktopForm4" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 600px * 400px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobileForm4">Mobile Image</label>
                            <asp:FileUpload ID="fileMobileForm4" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 600px * 400px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="btnfrm4" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnfrm4_Click"/>
                    
                </div>

                
                         
            </div>
    </div>
      </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Banner7 & Add Banner8</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm5BannerTitle">Title</label>
                             <asp:TextBox ID="txtForm5BannerTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtForm5BannerSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtForm5BannerSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtForm5Url">URL</label>
                             <asp:TextBox ID="txtForm5Url" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                           <div class="col-md-6">
                            <label for="Drpfrm5">Name</label>
                               <asp:DropDownList ID="Drpfrm5" CssClass="form-control" runat="server">
                                   <asp:ListItem Value="7">Banner7</asp:ListItem>
                                   <asp:ListItem Value="8">Banner8</asp:ListItem>
                                   
                               </asp:DropDownList>
                             

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktopForm5">Desktop Image</label>
                            <asp:FileUpload ID="fileDesktopForm5" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 800px * 400px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobileForm5">Mobile Image</label>
                            <asp:FileUpload ID="fileMobileForm5" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 800px * 400px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="btnfrm5" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnfrm5_Click"/>
                    
                </div>

                
                         
            </div>
    </div>
      </div>




    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Banner For Category Page</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtFormCatPageBannerTitle">Title</label>
                             <asp:TextBox ID="txtFormCatPageBannerTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtFormCatPageBannerSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtFormCatPageBannerSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtFormCatPageUrl">URL</label>
                             <asp:TextBox ID="txtFormCatPageUrl" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="" ControlToValidate="" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>--%>

                            
                        </div>

                           <div class="col-md-6">
                            <label for="DrpfrmCatPage">Name</label>
                               <asp:DropDownList ID="DrpfrmCatPage" CssClass="form-control" runat="server">
                                   <asp:ListItem Value="1">Banner1</asp:ListItem>
                                   <asp:ListItem Value="2">Banner2</asp:ListItem>
                                   <asp:ListItem Value="3">Banner3</asp:ListItem>
                                   
                               </asp:DropDownList>
                             

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktopFormCatPage">Desktop Image</label>
                            <asp:FileUpload ID="FileUploadfileDesktopFormCatPage" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 800px * 400px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobileFormCatPage">Mobile Image</label>
                            <asp:FileUpload ID="fileMobileFormCatPage" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 800px * 400px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="BtnCatPage" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="BtnCatPage_Click" />
                    
                </div>

                
                         
            </div>
    </div>
      </div>

    

    

    

</asp:Content>
