<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumni_image_edit.aspx.cs" Inherits="Mastercraft.Admin.Alumni_image_edit" %>

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
          <h3>Student Details</h3>
          	<div class="row mt">
          		<div class="col-lg-12">
          		<p>
     <%-- <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
          DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="258px" 
                        CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None" 
                        oniteminserted="DetailsView1_ItemInserted" 
                        oniteminserting="DetailsView1_ItemInserting">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
          <EditRowStyle BackColor="#999999" />
          <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
          <Fields>
              <asp:BoundField DataField="id" HeaderText="ID" 
                  SortExpression="id" InsertVisible="False" ReadOnly="True" />
              <asp:TemplateField HeaderText="Enrollment No">
              <InsertItemTemplate>
              <asp:TextBox ID="enrollment_no" runat="server" Text="<% # Bind('enrollment_no') %>"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Enrollment NUmber"  Display="Dynamic" ForeColor="Red" Text="*"  ControlToValidate="enrollment_no"  ></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Double" MinimumValue="100000" MaximumValue="999999" ErrorMessage="Please Enter Correct Enrollment Number"  Display="Dynamic" ForeColor="Red" Text="*"  ControlToValidate="enrollment_no" ></asp:RangeValidator>
              
              </InsertItemTemplate>
              
              
              </asp:TemplateField>
              <asp:BoundField DataField="name" HeaderText="Name" 
                  SortExpression="name" />
              <asp:BoundField DataField="fathers_name" HeaderText="Fathers Name" 
                  SortExpression="fathers_name" />
              <asp:BoundField DataField="course_name" HeaderText="Course Name" 
                  SortExpression="course_name" />
              <asp:BoundField DataField="grade" HeaderText="Grade" SortExpression="grade" />
              <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
          </Fields>
          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
      </asp:DetailsView></p>
                    <p>&nbsp;</p>--%>
                    <p>
                        
 <%--<asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>" ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>" DeleteCommand="DELETE FROM [aismtc_student_details] WHERE [id] = @id" InsertCommand="INSERT INTO [aismtc_student_details] ([enrollment_no], [name], [fathers_name], [course_name], [grade]) VALUES (@enrollment_no, @name, @fathers_name, @course_name, @grade)" SelectCommand="SELECT [id], [enrollment_no], [name], [fathers_name], [course_name], [grade] FROM [aismtc_student_details]" UpdateCommand="UPDATE [aismtc_student_details] SET [enrollment_no] = @enrollment_no, [name] = @name, [fathers_name] = @fathers_name, [course_name] = @course_name, [grade] = @grade WHERE [id] = @id" ID="SqlDataSource2"><DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="enrollment_no" Type="Int32"></asp:Parameter>
<asp:Parameter Name="name" Type="String"></asp:Parameter>
<asp:Parameter Name="fathers_name" Type="String"></asp:Parameter>
<asp:Parameter Name="course_name" Type="String"></asp:Parameter>
<asp:Parameter Name="grade" Type="String"></asp:Parameter>
</InsertParameters>
<UpdateParameters>
<asp:Parameter Name="enrollment_no" Type="Int32"></asp:Parameter>
<asp:Parameter Name="name" Type="String"></asp:Parameter>
<asp:Parameter Name="fathers_name" Type="String"></asp:Parameter>
<asp:Parameter Name="course_name" Type="String"></asp:Parameter>
<asp:Parameter Name="grade" Type="String"></asp:Parameter>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>--%>
 
                    </p>
                    <p>
                        
                        &nbsp;</p>
                        <br />

                   
                        <%-- <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                  AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                  BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                  DataKeyNames="id" DataSourceID="SqlDataSource1" 
                  EmptyDataText="There are no data records to display." Width="505px">
                  <Columns>
                      <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" 
                          SortExpression="id" />
                      <asp:BoundField DataField="enrollment_no" HeaderText="Enrollment No" 
                          SortExpression="enrollment_no" />
                      <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                      <asp:BoundField DataField="fathers_name" HeaderText="Fathers Name" 
                          SortExpression="fathers_name" />
                      <asp:BoundField DataField="course_name" HeaderText="Course Name" 
                          SortExpression="course_name" />
                      <asp:BoundField DataField="grade" HeaderText="Grade" SortExpression="grade" />
                      <asp:CommandField ButtonType="Button" HeaderText="Action" 
                          ShowDeleteButton="True" ShowEditButton="True" />
                  </Columns>
                  <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                  <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                  <RowStyle BackColor="White" ForeColor="#330099" />
                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                  <SortedAscendingCellStyle BackColor="#FEFCEB" />
                  <SortedAscendingHeaderStyle BackColor="#AF0101" />
                  <SortedDescendingCellStyle BackColor="#F6F0C0" />
                  <SortedDescendingHeaderStyle BackColor="#7E0000" />
              </asp:GridView>--%>
              <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>" 
                  DeleteCommand="DELETE FROM [aismtc_student_details] WHERE [id] = @id" 
                  InsertCommand="INSERT INTO [aismtc_student_details] ([enrollment_no], [name], [fathers_name], [course_name], [grade]) VALUES (@enrollment_no, @name, @fathers_name, @course_name, @grade)" 
                  ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>" 
                  SelectCommand="SELECT [id], [enrollment_no], [name], [fathers_name], [course_name], [grade] FROM [aismtc_student_details]" 
                  UpdateCommand="UPDATE [aismtc_student_details] SET [enrollment_no] = @enrollment_no, [name] = @name, [fathers_name] = @fathers_name, [course_name] = @course_name, [grade] = @grade WHERE [id] = @id">
                  <DeleteParameters>
                      <asp:Parameter Name="id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="enrollment_no" Type="Int32" />
                      <asp:Parameter Name="name" Type="String" />
                      <asp:Parameter Name="fathers_name" Type="String" />
                      <asp:Parameter Name="course_name" Type="String" />
                      <asp:Parameter Name="grade" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="enrollment_no" Type="Int32" />
                      <asp:Parameter Name="name" Type="String" />
                      <asp:Parameter Name="fathers_name" Type="String" />
                      <asp:Parameter Name="course_name" Type="String" />
                      <asp:Parameter Name="grade" Type="String" />
                      <asp:Parameter Name="id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>--%>
                        &nbsp;


          		</div>
          	</div>
			
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
