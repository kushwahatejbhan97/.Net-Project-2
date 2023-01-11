<%@ Page Title="" Language="C#" MasterPageFile="~/Testimonials.Master" AutoEventWireup="true" CodeBehind="Testimonials1.aspx.cs" Inherits="Mastercraft.Testimonials1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#data').after('<div id="nav" class="pagination"></div>');
            var rowsShown = 4;
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


<div class="vikwidget_right vikshadow">
                <div class="vikheader" >
        <div class="" style=" ">
            <h4 style="font-size:20px;font-weight:600;margin-left:20px; color:Navy">Testimonials</h4>
            </div>
            <div class="vikwidget-body ">
                <br />
              
                
                <asp:DataList class="table table-bordered table-striped table-condensed" ID="data" runat="server"  
                 DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" ClientIDMode="Static"
                 RepeatColumns="1" >
                  <ItemTemplate>
                    <br />
                <div style="margin-bottom:10px" class="col-md-12">
                    <div class="col-sm-3"><img src="<%# Eval("image_url") %>" /></div>
                    <div class="col-sm-9"><p>' <%# Eval("text")%>'</p></div>
                    <div class="col-sm-12 ">
                        <div class="pull-right">
                            <%# Eval("writer")%>
                        </div>
                    </div>
                </div>
               <hr />
               
               <div class="clearfix"></div>
               </ItemTemplate>
				            </asp:DataList>
              <br />
              <%-- <div class="clearfix"></div>--%>
               
             </div>
        
        
     </div>
            </div>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString1 %>"
        DeleteCommand="DELETE FROM [aismtc_testimonials] WHERE [id] = @id" InsertCommand="INSERT INTO [aismtc_testimonials] ([page_name], [writer], [image_url], [text]) VALUES (@page_name, @writer, @image_url, @text)"
        ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString1.ProviderName %>"
        SelectCommand="SELECT [id], [page_name], [writer], [image_url], [text] FROM [aismtc_testimonials]"
        UpdateCommand="UPDATE [aismtc_testimonials] SET [page_name] = @page_name, [writer] = @writer, [image_url] = @image_url, [text] = @text WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="page_name" Type="String" />
            <asp:Parameter Name="writer" Type="String" />
            <asp:Parameter Name="image_url" Type="String" />
            <asp:Parameter Name="text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="page_name" Type="String" />
            <asp:Parameter Name="writer" Type="String" />
            <asp:Parameter Name="image_url" Type="String" />
            <asp:Parameter Name="text" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
