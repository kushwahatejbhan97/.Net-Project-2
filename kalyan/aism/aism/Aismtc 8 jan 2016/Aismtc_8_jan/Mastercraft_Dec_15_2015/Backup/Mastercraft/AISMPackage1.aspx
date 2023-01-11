<%@ Page Title="" Language="C#" MasterPageFile="~/Courses.Master" AutoEventWireup="true" CodeBehind="AISMPackage1.aspx.cs" Inherits="Mastercraft.AISMPackage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#data').after('<div id="nav" class="pagination"></div>');
            var rowsShown = 10;
            var rowsTotal = $('#data tbody tr').length;
            var numPages = rowsTotal / rowsShown;
            for (i = 0; i < numPages; i++) {
                var pageNum = i + 1;
                $('#nav').append('<li><a href="#" rel="' + i + '">' + pageNum + '</a> </li> ');
            }
            $('#data tbody tr').hide();
            $('#data tbody tr').slice(0, rowsShown).show();
            $('#nav li:first').addClass('active');
            $('#nav a').bind('click', function () {

                $('#nav li').removeClass('active');
                $(this).addClass('active');
                var currPage = $(this).attr('rel');
                var startItem = currPage * rowsShown;
                var endItem = startItem + rowsShown;
                $('#data tbody tr').css('opacity', '0.0').hide().slice(startItem, endItem).
                        css('display', 'table-row').animate({ opacity: 1 }, 300);
            });
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <div class="vikwidget_right ">
                
                <div class="vikheader" >
        <div class="" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy;">Our Packages</h4>
          
    
        <div class="col-sm-12 col-md-12" style="margin-top: 20px;">
            <div class="panel-group" id="accordion">
            <asp:DataList ID="data" runat="server" 
                 DataSourceID="SqlDataSource1" Width="100%" RepeatDirection="Horizontal" ClientIDMode="Static"
                 RepeatColumns="1" >
                  <ItemTemplate>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <center><a data-toggle="collapse" data-parent="#accordion" href="#<%# Eval("collapseOne") %>"><%# Eval("header")%></a></center>
                        </h4>
                    </div>



                    <div id="<%# Eval("collapseOne") %>" class="panel-collapse collapse">
                        <div class="panel-body">
                            
                          <div class="col-sm-12">
                <%# Eval("text")%>
            </div>

                        </div>
                    </div>
                </div>
                </ItemTemplate>
				            </asp:DataList>
              
            </div>
        </div>

       
    
       </div>
        
     </div>
            </div>



    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>"
        DeleteCommand="DELETE FROM [aismtc_packages] WHERE [id] = @id" InsertCommand="INSERT INTO [aismtc_packages] ([page_name], [header], [collapseOne], [text]) VALUES (@page_name, @header, @collapseOne, @text)"
        ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>"
        SelectCommand="SELECT [id], [page_name], [header], [collapseOne], [text] FROM [aismtc_packages] WHERE  [page_name]='Packages' "
        UpdateCommand="UPDATE [aismtc_packages] SET [page_name] = @page_name, [header] = @header, [collapseOne] = @collapseOne, [text] = @text WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="page_name" Type="String" />
            <asp:Parameter Name="header" Type="String" />
            <asp:Parameter Name="collapseOne" Type="String" />
            <asp:Parameter Name="text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="page_name" Type="String" />
            <asp:Parameter Name="header" Type="String" />
            <asp:Parameter Name="collapseOne" Type="String" />
            <asp:Parameter Name="text" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
