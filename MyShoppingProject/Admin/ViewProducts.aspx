<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="MyShoppingProject.Admin.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col13">



						<h1 style="text-align:center; margin-bottom:30px; font-size:2em; margin-top:15px;">View Product</h1><hr />
                              
					

					   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="ProductId" 
                            DataSourceID="SqlDataSource1" class="caption7" GridLines="None" 
                            PageSize="14" Width="95%">
                           <Columns>
                               <asp:BoundField DataField="ProductId" HeaderText="Id" 
                                   InsertVisible="false" ReadOnly="True" SortExpression="ProductId" />
                               <asp:BoundField DataField="CategoryName" HeaderText="CatName"  Visible="false"
                                   SortExpression="CategoryName" />
                               <asp:BoundField DataField="BrandName" HeaderText="B.Name" 
                                   SortExpression="BrandName" />
                               <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                               <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                               <asp:BoundField DataField="UsbType" HeaderText="UsbType" 
                                   SortExpression="UsbType" />
                               <asp:BoundField DataField="Warranty" HeaderText="Warranty" 
                                   SortExpression="Warranty" />
                               <asp:TemplateField>
                                   <ItemTemplate>
                                       <table class="style1">
                                           <tr>
                                               <td>
                                                   <asp:Image ID="Image1" runat="server" Height="35px" 
                                                       ImageUrl='<%# Eval("Image") %>' Width="50px" />
                                               </td>
                                               <td>
                                                   &nbsp;</td>
                                               <td>
                                                   <asp:Button ID="Button2" runat="server" Text="Edit&amp;Del" 
                                                       PostBackUrl='<%# Eval("ProductId", "EditAndDelete.aspx?ProductId={0}") %>' 
                                                       Height="30px" Width="80px" />
                                               </td>
                                           </tr>
                                           <tr>
                                               <td>
                                                   &nbsp;</td>
                                               <td>
                                                   &nbsp;</td>
                                               <td>
                                                   &nbsp;</td>
                                           </tr>
                                       </table>
                                   </ItemTemplate>
                               </asp:TemplateField>
                           </Columns>
                           <HeaderStyle BackColor="Gray" Height="40px" />
                        </asp:GridView>
						
					
				
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select p.ProductId as ProductId,c.CategoryName as CategoryName,b.BrandName,p.Name as Name,p.Price as Price,p.UsbType,p.Warranty,p.Image
 from Products p ,Category c,Brand b
 where c.CategoryId =p.CategoryId and p.BrandId = b.BrandId"></asp:SqlDataSource>
						
					
				<asp:Button ID="Button1" runat="server" Text="Add New Record " style="margin-left:400px; margin-top:30px;" 
                            BackColor="#B7B793" Font-Size="17px" 
                            Height="43px"  onclick="Button1_Click"  ></asp:Button>


					</div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			
			</div>

           
		
			
		
		</div><!-- end of main -->
</asp:Content>
