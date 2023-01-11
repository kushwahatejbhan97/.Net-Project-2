<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewFreeListingRegs.aspx.cs" Inherits="AppMyDeal.NewFreeListingRegs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/style-freedom.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        input[type=checkbox], input[type=radio] {
    box-sizing: border-box;
    padding: 0;
    appearance: checkbox !important;

}

        .btn {
            width: 100%;
        }

         .footMenu {
   position: fixed;
    bottom: 52px;
    right: 0px;
    background: #f85c70;
    width: 100%;
    height: 19%;
    border-radius: 15px;
    padding: 13px;
}

         .navNew{
margin-bottom: 0;
    list-style: none;
        display: flex;
       }

        .navNew>li{
width: 25%;
    display: table-cell;
    text-align: center;
    position: relative;
    padding-top: 0;
    vertical-align: middle;
    line-height: normal;
}
       

        .nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
        display: flow-root;
}
        .nav>li {
    position: relative;
    display: block;
}
        .myLi {
    border-bottom: 1px solid #e8960b;
}
        .nav>li>a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            z-index: 9;
            width: 100%;
            background-color: #fff;
            height: 55px;
            box-shadow: 0 1px 1px 1px rgb(0 0 0 / 60%);
            will-change: transform;
            background: #fff;
            border-radius: 0px 0px 1px 1px;
        }

        .footer ul {
    padding: 0;
    margin: 0;
    list-style-type: none;
    width: 100%;
    display: table;
    height: 100%;
}

        .footer ul li {
    width: 20%;
    display: table-cell;
    text-align: center;
    position: relative;
    padding-top: 0;
    vertical-align: middle;
    line-height: normal;
}
    </style>
</head>

<body>
	
    <!-- header -->
    <div class="w3l-headers-9">
        <header>
            <div class="wrapper">
                <div class="header">
                    <div class="right-img-9">
                        <h1>
                            
                             <a class="logo" href="/">
              
            <img src="assets/images/finaldeal1.png" alt="Your logo" title="Your logo" style="margin-top: 4%;" />
          </a> 
                
                        </h1>
                    </div>
                    <div class="bottom-menu-content">
                        <input type="checkbox" id="nav" />
                        <label for="nav" class="menu-bar"></label>
                        <nav>
                            <div class="wrapper">
                                <ul class="menu">
                                   
                                    <li class="nav-right-sty">
                                        <a href="/listing-login" class="btn button-eff button-eff-2">Log In</a>
                                    </li>
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Sign Up</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- //header -->
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script>
            $('#nav').change(function () {
                if ($('#nav').is(":checked")) {
                    $('body').css('overflow', 'hidden');
                } else {
                    $('body').css('overflow', 'auto');
                }
            });
        </script>
    </div>
 
    <!-- faq page -->
    <div class="w3l-post-sec-main">
        <div class="post-se sec-padding">
            <div class="wrapper">
                <h3 class="title-main">Free Listing</h3>
                 <form id="form1" runat="server">
                <div class="post-cont">
                    <div class="heading-sec">
                        <h5>Company Information</h5>
                       
                    </div>
                    <div class="about-right-faq">
                       
                            <div class="d-grid grid">
                                

                                 <div class="ele-9its_grid">
                                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control"  DataTextField="CategoryName" DataValueField="CatId" AppendDataBoundItems="true" DataSourceID="SqlDataSourceCate" AutoPostBack="true" ValidationGroup="NewListing">
                                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                                </asp:DropDownList>
                                     <asp:RequiredFieldValidator ControlToValidate="DropDownList2" ID="RequiredFieldValidator1"
                                    ValidationGroup="NewListing" ForeColor="Red" ErrorMessage="*Please Select Category"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                                     <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
                                                         ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                         SelectCommand="SELECT [CatId], [CategoryName] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
    </asp:SqlDataSource>
                                </div>

                                
                            </div>
                            
                            <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtcompanyname" CssClass="form-control" placeholder="Company Name OR Title" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" BorderStyle="None" ControlToValidate="txtcompanyname" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Company Name OR Title"></asp:RequiredFieldValidator>
                                   <%-- <input class="form-control" placeholder="Company Name OR Title" name="name" type="text"
                                        required="">--%>
                                </div>
                                <div class="ele-9its_grid">
                                    <%--<h5>Enter Your Price</h5>--%>
                                    <asp:TextBox ID="txtemailid" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" BorderStyle="None" ControlToValidate="txtemailid" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Email"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="d-grid grid-col-2">
                                 <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtmobileNo" runat="server" class="form-control" placeholder="Phone Number" data-error="Landline Number field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                     
                                 
                                </div>
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtLandlineno" runat="server" class="form-control" placeholder="Landline Number" data-error="Landline Number field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                  
                                </div>
                            </div>
                             <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                   <asp:TextBox ID="txtYearstablis" runat="server" class="form-control" placeholder="Year Established*" data-error="Year Established field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" BorderStyle="None" ControlToValidate="txtYearstablis" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Year Established"></asp:RequiredFieldValidator>

                                </div>

                                 <div class="ele-9its_grid">
                                   <asp:TextBox ID="txtwebsite" runat="server" class="form-control" placeholder="Website (ex: www.example.com)" data-error="Year Established field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                
                                 </div>
                            </div>


                            <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                   <asp:TextBox ID="txtownername" runat="server" class="form-control" placeholder="Owner Name" data-error="OwnerName field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" BorderStyle="None" ControlToValidate="txtownername" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Owner Name"></asp:RequiredFieldValidator>

                                </div>

                                 <div class="ele-9its_grid">
                                     <asp:DropDownList ID="ddlcity" runat="server" class="form-control" 
                                                        AppendDataBoundItems="True" ValidationGroup="NewListing" 
                                                        DataSourceID="SqlDataSourceCityName" DataTextField="CityName" 
                                                        DataValueField="CityName">
                                                  <asp:ListItem Value="0">Choose City</asp:ListItem>
                                            
                                                </asp:DropDownList>

                                      <asp:RequiredFieldValidator ControlToValidate="ddlcity" ID="RequiredFieldValidator9"
                                    ValidationGroup="NewListing" ForeColor="Red" ErrorMessage="*Please Choose City"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                                </div>
                            </div>


                            <div class="d-grid grid">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtlocation" runat="server" class="form-control" placeholder="Location*"  data-error="Area field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" BorderStyle="None" ControlToValidate="txtlocation" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Location"></asp:RequiredFieldValidator>
                                </div>

                                
                                 
                            </div>


                            <div class="d-grid grid">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtfulladdress"  runat="server" class="form-control" placeholder="Address*"  data-error="Area field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" BorderStyle="None" ControlToValidate="txtfulladdress" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Address"></asp:RequiredFieldValidator>
                                  
                                </div>

                                 
                            </div>
                        <div class="d-grid grid">
                                
                                 <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtPassword" runat="server"  class="form-control" placeholder="Password*"  ValidationGroup="NewListing"></asp:TextBox>
                                  
                                </div>
                                
                            </div>

                        <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtDes"  runat="server" class="form-control" placeholder="Description *"    ValidationGroup="NewListing"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" BorderStyle="None" ControlToValidate="txtDes" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Description"></asp:RequiredFieldValidator>
                                </div>

                                 <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtMap"  runat="server" class="form-control" placeholder="Map*"   ValidationGroup="NewListing"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" BorderStyle="None" ControlToValidate="txtMap" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Map"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                        


                         <div class="d-grid grid">
                        <div class="ele-9its_grid">
                                   
                                <asp:FileUpload ID="FUpBanner" placeholder="Product Desktop Image*" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FUpBanner" ValidationGroup="NewListing" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Desktop Image"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 253px * 253px</p>

                                </div>
                             </div>

                            

                         <div class="d-grid grid">
                                
                            <div class="ele-9its_grid">
                                   <asp:CheckBoxList ID="CheckBoxList1"  runat="server" DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" RepeatDirection="Horizontal" RepeatColumns="5"  DataValueField="TagId" ValidationGroup="NewListing">
                                        </asp:CheckBoxList>

                                    <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid) ORDER BY Tags">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                                  
                                  
                                </div>
                                 
                            </div>
                                 
                                
                        
                            
                      <asp:Button ID="BtnSignUP" ValidationGroup="NewListing" class="btn button-eff" runat="server" Text="Post Ad" OnClick="BtnSignUP_Click" />
                    </div>
                </div>




                

                </form>
            </div>
        </div>
    </div>
    <!-- //faq -->
    <!-- footer-22 -->
     <div class="footMenu" id="MyFootMenu" style="display:none;">
    <div class="nav">
     <a onclick="closeNav()" style="padding: 2px 9px 4px 9px; font-size: 18px; color: white;">X</a>
      <ul class="navNew">

           <li>
      <a href="/"><span><i class="fa fa-commenting-o" style="font-size: 22px; color: #fff;" ></i></span>
     <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a> 
    </li>
    <li>
        <a href="#"><span><i class="fa fa-map-marker" style="font-size: 22px; color: #fff;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a>
    </li>
           <li>
        <a href="#"><span><i class="fa fa-user-circle" style="font-size: 22px; color: #fff;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a>
    </li>

            <li>
        <a href="#"><span><i class="fa fa-credit-card-alt" style="font-size: 22px; color: #fff;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a>
    </li>

       <%-- <li id="Compname" runat="server" visible="false" class="myLi nav-item"><a href="#" class="Mya"><asp:Label ID="lblcompname" runat="server" style="color:White;"></asp:Label></a></li>
       
        <li class="myLi nav-item" id="UserRegister" visible="true" runat="server"><a href="/user-signup" class="Mya" style="color:White;">Register</a></li>
        <li class="myLi nav-item" id="Userlogin" visible="true" runat="server"><a href="/login" class="Mya" style="color:White;">Login</a></li>
        <li class="myLi nav-item" id="Managecomp" runat="server" visible="false"><a href="/Account/Dashboard.aspx" class="Mya" style="color:White;">Manage Listing</a></li>--%>
      </ul>


        <%--<nav>
                            <div class="wrapper">
                                <ul class="menu">
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Free Listing</a>
                                    </li>
                                   
                                    <li><a href="#" class="link-nav">What's New</a></li>
                                     <li><a href="#" class="link-nav">Advertise</a></li>
                                     <li><a href="#" class="link-nav">Contact</a></li>
                                   
                                    <li>
                                        <label for="drop-4" class="toggle toogle-2">Category <span class="fa fa-angle-down" aria-hidden="true"></span></label>
                                        <a href="#" class="link-nav dropdown-toggle">Category <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                                        <input type="checkbox" id="drop-2">
                                        <ul class="first-dropdwon">
									<li><a href="/category/AUTOMOBILES--TWO-WHEELERS	">AUTOMOBILES &amp; TWO WHEELERS	</a></li>
									
										  </ul>




                                        
                                        
                                    </li>
                                    
                                  
                                  

                                     
                                   
									
                                    
                                </ul>
                            </div>
                        </nav>--%>
    </div>
 </div>


 <footer id="footerBottom" class="footer headroomft headroom headroom--not-bottom headroom--pinned headroom--top" style="display: block;">
 <ul>
    <li>
      <a href="/" style="display:grid;"><span><i class="fa fa-home" style="font-size: 22px; color: black;" ></i></span>
     <span class="txt" style="font-size: 17px; font-weight: 500; color: black" >Home</span></a> 
    </li>
    <li>
        <a href="#" style="display:grid;"><span><i class="fa fa-facebook-official" style="font-size: 22px; color: black;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500; color: black" >Social</span></a>
    </li>
    <li> 
      <a style="display:grid;" onclick="openNav()"> <span><i class="fa fa-list-ul" style="font-size: 22px; color: black;" ></i></span>
      <span class="txt" style="font-size: 17px; font-weight: 500;" >Menu</span></a>
    </li>
</ul>
</footer>

    <script>
        function openNav() {
            document.getElementById("MyFootMenu").style.display = "";
        }

        function closeNav() {
            document.getElementById("MyFootMenu").style.display = "none";
        }

    </script>

    <!-- //footer-22 -->



	</body>
</html>
