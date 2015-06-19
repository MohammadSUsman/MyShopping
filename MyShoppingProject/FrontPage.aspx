<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FrontPage.aspx.cs" Inherits="MyShoppingProject.FrontPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<%--<!-- main --><div class="main">
			
			<div class="shell">
				<!-- cols -->
				<section class="cols">
					<div class="col">
					
					<div id="accordion-resizer" class="ui-widget-content">
  <div id="accordion">

    <h3>LAPTOP</h3>
    <div>
<asp:DataList ID="DataList2" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource2">
    <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("BrandName") %>' ForeColor="#6200C4" PostBackUrl='<%# Eval("BrandId", "ProductPage.aspx?BrandId={0}") %>' ></asp:LinkButton>
    </ItemTemplate>
        </asp:DataList>



        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingDatabaseConnectionString %>" 
            SelectCommand="SELECT BrandId,BrandName FROM [Brand] where CategoryId=1;">
        </asp:SqlDataSource>



    </div>
    
    <h3>MOBILE</h3>
    <div>


<asp:DataList ID="DataList3" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource3">
    <ItemTemplate>
        <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("BrandName") %>' ForeColor="#6200C4" PostBackUrl='<%# Eval("BrandId", "ProductPage.aspx?BrandId={0}") %>'></asp:LinkButton>
      
    </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingDatabaseConnectionString %>" 
            SelectCommand="SELECT BrandId,BrandName FROM [Brand] where CategoryId=2;">
        </asp:SqlDataSource>

    </div>
      
    <h3>TABLET</h3>
    <div>


<asp:DataList ID="DataList4" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource4">
    <ItemTemplate>
        <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("BrandName") %>' ForeColor="#6200C4" PostBackUrl='<%# Eval("BrandId", "ProductPage.aspx?BrandId={0}") %>'></asp:LinkButton>
        
    </ItemTemplate>
        </asp:DataList>



        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingDatabaseConnectionString %>" 
            SelectCommand="SELECT BrandId,BrandName FROM [Brand] where CategoryId=3;">
        </asp:SqlDataSource>



    </div>
    
    <h3>IPOD</h3>
    <div>



<asp:DataList ID="DataList5" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource5">
    <ItemTemplate>
        &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" 
            Text='<%# Eval("BrandName") %>' ForeColor="#6200C4" PostBackUrl='<%# Eval("BrandId", "ProductPage.aspx?BrandId={0}") %>'></asp:LinkButton>

    </ItemTemplate>
        </asp:DataList>


        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingDatabaseConnectionString %>" 
            SelectCommand="SELECT BrandId,BrandName FROM [Brand] where CategoryId=4;">
        </asp:SqlDataSource>


    </div>
       
    <h3>CAMERA</h3>
    <div>


<asp:DataList ID="DataList6" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource6">
    <ItemTemplate>
        <asp:LinkButton ID="LinkButton6" runat="server" Text='<%# Eval("BrandName") %>' ForeColor="#6200C4" PostBackUrl='<%# Eval("BrandId", "ProductPage.aspx?BrandId={0}") %>'></asp:LinkButton>
  
    </ItemTemplate>
        </asp:DataList>


        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingDatabaseConnectionString %>" 
            SelectCommand="SELECT BrandId,BrandName FROM [Brand] where CategoryId=5;">
        </asp:SqlDataSource>


    </div>
    
  </div>
</div>
					</div>--%>


					<div class="col9">
					<asp:DataList ID="DataList1" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" 
                            GridLines="Horizontal" RepeatColumns="3" DataKeyField="ProductId" 
                            RepeatDirection="Horizontal">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" 
                                    ImageUrl='<%# Eval("Image") %>' Width="222px" PostBackUrl='<%# Eval("ProductId", "ProductDetail.aspx?ProductId={0}") %>' />
                                <br />
                                <table class="style1">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style4">
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style4">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Warranty") %>'></asp:Label>
                                           
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            </td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style4">

                                          <asp:Label ID="Label2" runat="server" Text="Rs."  Font-Size="20px" ForeColor="#D70000"></asp:Label><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' 
                                                Font-Size="20px" ForeColor="#D70000" />  <br />

                                             <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl='<%# Eval("ProductId", "ProductDetail.aspx?ProductId={0}") %>'>Detail View</asp:LinkButton><br />

                                             <a href='ShoppingCart.aspx?cart_id=<%# Eval("ProductId") %>'><img src="Images/bg/AddtoCart1.jpg"  width="100" height="80" /></a>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                           </td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style4">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT ProductId, Name,Price,Image,Warranty FROM [Products] where Name='HP ENVY M6-1203TU' or Name='Dell Inspiron 5421-i7' or Name='Dell Inspiron N5521' or Name='Nokia Asha 308' or Name='HP Pavilion G6-2287sx' or Name='Dell Vostro'
                            or Name='HP ProBook 6470b' or Name='HP ProBook 4530s' or Name='Dell Latitude E6230'

"></asp:SqlDataSource>
					</div>
					
				
					<%--<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			</div>
			<!-- end of shell -->
			
		</div>
		<!-- end of main -->
		
		
	
		</div>--%>
		
		
	
		</asp:Content>
