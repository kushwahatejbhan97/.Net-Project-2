<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Mastercraft.Admin.success_story._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>ASIAN INSTITUTE OF SAFETY MANAGEMENT</title>

 <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="../assets/css/style.css" rel="stylesheet">
    <link href="../assets/css/style-responsive.css" rel="stylesheet">
    <link href="../load-style.css" rel="stylesheet" type="text/css" />
  <script type="text/jscript" src="latestJs_1.11/jquery.min.js"></script>
    <script type="text/jscript" src="DropzoneJs_scripts/dropzone.js"></script>
    <link href="DropzoneJs_scripts/dropzone.css" rel="stylesheet" />
     <style type="text/css" >
       .imgclas
       {
           width:100px;
       }
      
      </style>
</head>
<body>
    <form id="form1" runat="server">
     <section id="container" >

      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="http://www.aismtc.com/" class="logo"><b>ASIAN INSTITUTE OF SAFETY MANAGEMENT</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><asp:Button class="logout" ID="Button1" runat="server" Text="Logout" 
                            onclick="Button1_Click"></asp:Button>
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
                      <a class="active" href="../dashboard.aspx">
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
                      <li><a  href="../Home_edit_text.aspx">Text Edit</a></li>
                      <li><a  href="../Home_image_edit.aspx">Image Edit</a></li>
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
                      <li><a  href="../About_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../About_image_edit.aspx">Image Edit</a></li>
                      </ul>
                      </li>
                      <li><a  href="#">Mission & Vision</a>
                          <ul class="sub">
                      <li><a  href="../Mission_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Mission_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                      
                          <li><a  href="#">History</a>
                              <ul class="sub">
                      <li><a  href="../History_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../History_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                          <li><a  href="#">Goal</a>
                             <ul class="sub">
                      <li><a  href="../Goal_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Goal_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                         
                          <li><a  href="#">Quality Policy</a>
                             <ul class="sub">
                      <li><a  href="../Qualitypolicy_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Qualitypolicy_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                          <li><a  href="#">Director's Message</a>
                             <ul class="sub">
                      <li><a  href="../Directors_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Directors_image_edit.aspx">Image Edit</a></li>
                      </ul></li>
                          
                          <li><a  href="#">Services</a>
                              <ul class="sub">
                      <li><a  href="../Services_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Services_image_edit.aspx">Image Edit</a></li>
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
                      <li><a  href="../AbdulSamay_edit_text.aspx">Text Edit</a></li>
                      <li><a  href="../AbdulSamay_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Mohammed Abdul Rafay Abid</a>
                          <ul class="sub">
                      <li><a  href="../RafayAbid_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../RafayAbid_image_edi.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Mohammed Abdul Jamay Junaid</a>
                          <ul class="sub">
                      <li><a  href="../JamayJunaid_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../JamayJunaid_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Firoz Ahmed</a>
                          <ul class="sub">
                      <li><a  href="../Firoz_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Firoz_image_edit.aspx">Image Edit</a></li>
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
                      <li><a  href="../Packages_edit_text.aspx">Text Edit</a></li>
                      <li><a  href="../Packages_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">International Courses</a>
                          <ul class="sub">
                      <li><a  href="../International_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../International_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">PG Diploma</a>
                          <ul class="sub">
                      <li><a  href="../PgDiploma_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../PgDiploma_image_edit.aspx">Image Edit</a></li>
                      </ul>
                          </li>
                          <li><a  href="#">Trainings</a>
                          <ul class="sub">
                      <li><a  href="../Training_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Training_image_edit.aspx">Image Edit</a></li>
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
                      <li><a  href="../Testimonials.aspx">Add Testimonial</a></li>
                        <li><a  href="../Success_story/default.aspx">Success Stories</a></li>
                         <li><a  href="../StudentSpeak.aspx">Add Student Speak</a></li>

                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="#" >
                           <i class=" fa fa-bar-chart-o"></i>
                          <span>Gallery </span>
                      </a>
                     <ul class="sub">    
                          <li><a  href="../image_upload.aspx">Image Gallery</a></li>
                          
                          
                          <li><a  href="../VideoGallery.aspx">Video Gallery</a></li>
                        </ul> 
                          
                      
                  </li>
                      <li class="sub-menu">
                      <a class="" href="#">
                          <i class="fa fa-desktop"></i>
                          <span>Alumni</span>
                      </a>
                      
                      <ul class="sub">
                      <li><a  href="../Alumni_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Alumni_image_edit.aspx">Image Edit</a></li>
                      <li><a  href="../Student_details.aspx">Student Details</a></li>
                      </ul>
                  </li>
                      <li class="sub-menu">
                      <a class="" href="#">
                          <i class="fa fa-cogs"></i>
                          <span>Career</span>
                      </a>
                      <ul class="sub">
                      <li><a  href="../Career_text_edit.aspx">Text Edit</a></li>
                      <li><a  href="../Career_image_edit.aspx">Image Edit</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a class="" href="../Add_Notice.aspx">
                          <i class="fa fa-book"></i>
                          <span>Add Notice</span>
                      </a>
                  </li>

                 
                  
                 

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>



      <section id="main-content">
          <section class="wrapper site-min-height">
          <div class ="wrap">
          <h1>Upload New Image</h1>
    <div id="drag-drop-area" style=" position:relative; height: 300px;">
   
    
    <div id="dZUpload" style=" position:relative; border: 4px dashed #b4b9be;height: 300px;" class="dropzone" >
        <div class="dz-default dz-message" style=" color:rgb(160, 165, 170); font-weight:700; font-size:18px;  ">
            Drop image here. 
             or 

             <input id="plupload-browse-button" type="button" value="Select Files" class="button" style="position: relative; z-index: 1;">
        </div>
    </div>
    <script type="text/javascript">

        $(document).ready(function () {
            console.log("Hello");
            Dropzone.autoDiscover = false;
            //Simple Dropzonejs 
            $("#dZUpload").dropzone({
                url: "hn_SimpeFileUploader.ashx",
                maxFiles: 10,
                addRemoveLinks: true,
                success: function (file, response) {
                    var imgName = response;
                    file.previewElement.classList.add("dz-success");
                    console.log("Successfully uploaded :" + imgName);
                },
                error: function (file, response) {
                    file.previewElement.classList.add("dz-error");
                }
            });
        });
    </script>
    </div>
    </div>


     <br />
     <asp:GridView class="wp-list-table widefat fixed striped media" ID="GridView1" runat="server" AllowPaging="True" 
         AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="success_id" 
         DataSourceID="SqlDataSource1" 
         EmptyDataText="There are no data records to display.">
         <Columns>
             <asp:BoundField DataField="success_id" HeaderText="ID" ReadOnly="True" 
                 SortExpression="success_id" />
             <asp:BoundField DataField="file_name" HeaderText="File Name" 
                 SortExpression="file_name" />
            <asp:BoundField DataField="url" HtmlEncode="False" 
                            ControlStyle-CssClass="imgclas" ItemStyle-CssClass="imgclas"  HeaderText="URL" 
                            SortExpression="url" >
<ControlStyle CssClass="imgclas"></ControlStyle>

<ItemStyle CssClass="imgclas"></ItemStyle>
                        </asp:BoundField>
             <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
             <asp:BoundField DataField="original_url" HeaderText="Original Url" 
                 SortExpression="original_url" />
             <asp:CommandField HeaderText="Actions" ShowDeleteButton="True" 
                 ShowEditButton="True" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>" 
         DeleteCommand="DELETE FROM [aismtc_success] WHERE [success_id] = @success_id" 
         InsertCommand="INSERT INTO [aismtc_success] ([file_name], [url], [author], [date], [url_620_300], [original_url]) VALUES (@file_name, @url, @author, @date, @url_620_300, @original_url)" 
         ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>" 
         SelectCommand="SELECT [success_id], [file_name], [url], [author], [date], [url_620_300], [original_url] FROM [aismtc_success] ORDER BY [success_id] DESC" 
         
         UpdateCommand="UPDATE [aismtc_success] SET [file_name] = @file_name, [url] = @url, [author] = @author, [date] = @date, [url_620_300] = @url_620_300, [original_url] = @original_url WHERE [success_id] = @success_id">
         <DeleteParameters>
             <asp:Parameter Name="success_id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="file_name" Type="String" />
             <asp:Parameter Name="url" Type="String" />
             <asp:Parameter Name="author" Type="String" />
             <asp:Parameter Name="date" Type="String" />
             <asp:Parameter Name="url_620_300" Type="String" />
             <asp:Parameter Name="original_url" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="file_name" Type="String" />
             <asp:Parameter Name="url" Type="String" />
             <asp:Parameter Name="author" Type="String" />
             <asp:Parameter Name="date" Type="String" />
             <asp:Parameter Name="url_620_300" Type="String" />
             <asp:Parameter Name="original_url" Type="String" />
             <asp:Parameter Name="success_id" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
     <br />
     <br />


     </section >
      </section >


 </section >


 
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="../assets/js/jquery.ui.touch-punch.min.js"></script>
    <script class="include" type="text/javascript" src="../assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../assets/js/jquery.scrollTo.min.js"></script>
    <script src="../assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="../assets/js/common-scripts.js"></script>

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
