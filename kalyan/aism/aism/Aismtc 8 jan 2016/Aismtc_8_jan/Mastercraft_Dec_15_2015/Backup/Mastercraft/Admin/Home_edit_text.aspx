<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_edit_text.aspx.cs" Inherits="Mastercraft.Admin.Home_edit_text" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
      <title>Asian institute of safety management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="assets/img/facivon.png"/>
    
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

      <form id="form1" runat="server">

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="http://www.aismtc.com/" class="logo"><b>ASIAN INSTITUTE OF SAFETY MANAGEMENT</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li>  <asp:Button class="logout" ID="Button1" OnClick="Button1_Click" runat="server" Text="Logut"></asp:Button></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="Default.aspx"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"></h5>
              	  	
                  <li class="mt">
                      <a class="active" href="dashboard.aspx">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                   <li class="sub-menu">
                      <a class="" href="#">
                          <i class="fa fa-desktop"></i>
                          <span>Home</span>
                      </a>
                      <ul class="sub">
                      <li><a  href="Home_edit_text.aspx">Text Edit</a></li>
                      <li><a  href="Home_image_edit.aspx">Image Edit</a></li>
                      </ul>
                  </li>

                  <li class="sub">
                      <a class="" href="#">
                          <i class="fa fa-cogs"></i>
                          <span>About Us</span>
                      </a>
                      <ul class="sub-menu">
                      <li><a  href="#">About Us</a>
                      <ul class="sub">
                      <li><a  href="About_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="About_image_edit.aspx">Image Edit</a></li>
                      </ul>
                      </li>
                      <li><a  href="#">Mission & Vision</a>
                          <ul class="sub">
                      <li><a  href="Mission_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Mission_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                      
                          <li><a  href="#">History</a>
                              <ul class="sub">
                      <li><a  href="History_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="History_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                          <li><a  href="#">Goal</a>
                             <ul class="sub">
                      <li><a  href="Goal_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Goal_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                         
                          <li><a  href="#">Quality Policy</a>
                             <ul class="sub">
                      <li><a  href="Qualitypolicy_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Qualitypolicy_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                          <li><a  href="#">Director's Message</a>
                             <ul class="sub">
                      <li><a  href="Directors_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Directors_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                          <li><a  href="#">Services</a>
                              <ul class="sub">
                      <li><a  href="Services_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Services_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a class="" href="#">
                          <i class="fa fa-book"></i>
                          <span>Trainers</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="#">Mohammed Abdul Samay Sayeed</a>
                          <ul class="sub">
                      <li><a  href="AbdulSamay_edit_text.aspx">Text Edit</a></li>
                      <li><a  href="AbdulSamay_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Mohammed Abdul Rafay Abid</a>
                          <ul class="sub">
                      <li><a  href="RafayAbid_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="RafayAbid_image_edi.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Mohammed Abdul Jamay Junaid</a>
                          <ul class="sub">
                      <li><a  href="JamayJunaid_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="JamayJunaid_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Firoz Ahmed</a>
                          <ul class="sub">
                      <li><a  href="Firoz_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Firoz_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>

                      </ul>
                  </li>

                   <li class="sub-menu">
                      <a href="#">
                           <i class="fa fa-tasks"></i>
                          <span>Courses</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="#">Packages</a>
                          <ul class="sub">
                      <li><a  href="Packages_edit_text.aspx">Text Edit</a></li>
                      <li><a  href="Packages_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">International Courses</a>
                          <ul class="sub">
                      <li><a  href="International_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="International_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">PG Diploma</a>
                          <ul class="sub">
                      <li><a  href="PgDiploma_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="PgDiploma_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Trainings</a>
                          <ul class="sub">
                      <li><a  href="Training_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Training_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>

                      </ul>
                  </li>

                  


                    <li class="sub-menu">
                      <a href="#">
                           <i class="fa fa-tasks"></i>
                          <span>testimonial</span>
                      </a>
                      <ul class="sub">                        
                      <li><a  href="Testimonials.aspx">Add Testimonial</a></li>
                        <li><a  href="Success_story/default.aspx">Success Stories</a></li>
                         <li><a  href="StudentSpeak.aspx">Add Student Speak</a></li>

                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="#" >
                           <i class=" fa fa-bar-chart-o"></i>
                          <span>Gallery </span>
                      </a>
                     <ul class="sub">    
                          <li><a  href="image_upload.aspx">Image Gallery</a></li>
                          
                          
                          <li><a  href="VideoGallery.aspx">Video Gallery</a></li>
                        </ul> 
                          
                      
                  </li>
                      <li class="sub-menu">
                      <a class="" href="#">
                          <i class="fa fa-desktop"></i>
                          <span>Alumni</span>
                      </a>
                      
                      <ul class="sub">
                      <li><a  href="Alumni_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Alumni_image_edit.aspx">Image Edit</a></li>
                      <li><a  href="Student_details.aspx">Student Details</a></li>
                      </ul>
                  </li>
                      <li class="sub-menu">
                      <a class="" href="#">
                          <i class="fa fa-cogs"></i>
                          <span>Career</span>
                      </a>
                      <ul class="sub">
                      <li><a  href="Career_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="Career_image_edit.aspx">Image Edit</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a class="" href="Add_Notice.aspx">
                          <i class="fa fa-book"></i>
                          <span>Add Notice</span>
                      </a>
                  </li>

                 
                  
                 

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
          <h3>Home Edit Text</h3>
      <p>&nbsp;</p>
      <p>
          <asp:GridView ID="GridView1" class="table table-bordered table-striped table-condensed"  runat="server" AllowPaging="True" 
              AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
              DataSourceID="SqlDataSource1" 
              EmptyDataText="There are no data records to display.">
              <Columns>
                  <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" 
                      SortExpression="id" />
                  <asp:BoundField DataField="page_name" HeaderText="Page Name" 
                      SortExpression="page_name" />
                  <asp:BoundField DataField="header" HeaderText="Header" 
                      SortExpression="header" />
                  <asp:BoundField DataField="text" HeaderText="Text" SortExpression="text" />
                  <asp:HyperLinkField DataNavigateUrlFields="id" 
                      DataNavigateUrlFormatString="edit_text_master.aspx?id={0}" Text="Edit" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>" 
              DeleteCommand="DELETE FROM [aismtc_text] WHERE [id] = @id" 
              InsertCommand="INSERT INTO [aismtc_text] ([page_name], [header], [text]) VALUES (@page_name, @header, @text)" 
              ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>" 
              SelectCommand="SELECT [id], [page_name], [header], [text] FROM [aismtc_text] WHERE ([page_name] = @text)" 
              UpdateCommand="UPDATE [aismtc_text] SET [page_name] = @page_name, [header] = @header, [text] = @text WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="page_name" Type="String" />
                  <asp:Parameter Name="header" Type="String" />
                  <asp:Parameter Name="text" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:Parameter DefaultValue="home" Name="text" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="page_name" Type="String" />
                  <asp:Parameter Name="header" Type="String" />
                  <asp:Parameter Name="text" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </p>
<asp:GridView ID="GridView2" 
          class="table table-bordered table-striped table-condensed"  runat="server" 
          AutoGenerateColumns="False" DataKeyNames="id" 
          EmptyDataText="There are no data records to display." 
          DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True"><Columns>
<asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
<asp:BoundField DataField="page_name" HeaderText="page_name" SortExpression="page_name"></asp:BoundField>
<asp:BoundField DataField="header" HeaderText="header" SortExpression="header"></asp:BoundField>
<asp:BoundField DataField="text" HeaderText="text" SortExpression="text"></asp:BoundField>
        <asp:HyperLinkField DataNavigateUrlFields="id" 
            DataNavigateUrlFormatString="edit_text_master_copy.aspx?id={0}" Text="Edit" />
</Columns>
</asp:GridView>
 <asp:SqlDataSource runat="server" 
          ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>" 
          ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>" 
          DeleteCommand="DELETE FROM [aismtc_text] WHERE [id] = @id" 
          InsertCommand="INSERT INTO [aismtc_text] ([page_name], [header], [text]) VALUES (@page_name, @header, @text)" 
          SelectCommand="SELECT [id], [page_name], [header], [text] FROM [aismtc_text] WHERE ([page_name] = @page_name)" 
          UpdateCommand="UPDATE [aismtc_text] SET [page_name] = @page_name, [header] = @header, [text] = @text WHERE [id] = @id" 
          ID="SqlDataSource3"><DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="page_name" Type="String"></asp:Parameter>
<asp:Parameter Name="header" Type="String"></asp:Parameter>
<asp:Parameter Name="text" Type="String"></asp:Parameter>
</InsertParameters>
     <SelectParameters>
         <asp:Parameter DefaultValue="home1" Name="page_name" Type="String" />
     </SelectParameters>
<UpdateParameters>
<asp:Parameter Name="page_name" Type="String"></asp:Parameter>
<asp:Parameter Name="header" Type="String"></asp:Parameter>
<asp:Parameter Name="text" Type="String"></asp:Parameter>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>
 
         
			
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
             
              2015 - Alvarez.is
              <a href="blank.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    
  <script>
      //custom select box

      $(function () {
          $('select.styled').customSelect();
      });

  </script>

      </form>

  </body>
</html>