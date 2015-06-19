<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="MyShoppingProject.ProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	
					<div class="col9">
						

                        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataKeyField="ProductId" DataSourceID="SqlDataSource1" 
                            GridLines="Horizontal" RepeatColumns="3" Font-Bold="False" 
                            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                            Font-Underline="False" RepeatDirection="Horizontal" ForeColor="Black">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="164px" 
                                    ImageUrl='<%# Eval("Image") %>' Width="150px" PostBackUrl='<%# Eval("ProductId", "ProductDetail.aspx?ProductId={0}") %>' />
                                <br />
                                <table class="style1">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style3">
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
                                        <td class="style3">
                                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Warranty") %>'></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style3">
                                             <asp:Label ID="Label2" runat="server" Text="Rs."  Font-Size="20px" ForeColor="#D70000"></asp:Label>
                                             <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' 
                                                Font-Size="20px" ForeColor="#D70000" />  <br />

                                            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl='<%# Eval("ProductId", "ProductDetail.aspx?ProductId={0}") %>'>Detail View</asp:LinkButton><br />
                                            <a href='ShoppingCart.aspx?cart_id=<%# Eval("ProductId") %>'><img src="Images/bg/AddtoCart1.jpg"  width="100" height="80" /></a>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>




					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Products] WHERE ([BrandId] = @BrandId)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="BrandId" QueryStringField="BrandId" 
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>




					</div>

</asp:Content>
