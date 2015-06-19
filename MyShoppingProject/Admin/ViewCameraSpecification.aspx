<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="ViewCameraSpecification.aspx.cs" Inherits="MyShoppingProject.Admin.ViewCameraSpecification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div style="height:auto">

 <h1 style="text-align:center; font-family:2em; font-family:Arial; margin-bottom:25px;">View Camera Specification</h1>
					
                    <div class="col">

             
                          
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="CameraId" 
                            HorizontalAlign="Center"
                            DataSourceID="SqlDataSource1" BackColor="White" 
                            BorderStyle="None" BorderWidth="0px" CellPadding="3" GridLines="None" 
                            Font-Names="Arial" Font-Size="1em" ShowFooter="True" Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="CameraId" HeaderText="CameraId" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="CameraId" />
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                                    SortExpression="ProductId" />
                                <asp:BoundField DataField="MegaPixel" HeaderText="MegaPixel" 
                                    SortExpression="MegaPixel" />
                                <asp:BoundField DataField="OpticalZoom" HeaderText="OpticalZoom" 
                                    SortExpression="OpticalZoom" />
                                <asp:BoundField DataField="LcdSize" HeaderText="LcdSize" 
                                    SortExpression="LcdSize" />
                                <asp:BoundField DataField="LcdTouchscreen" HeaderText="Touchscreen" 
                                    SortExpression="LcdTouchscreen" />
                                <asp:BoundField DataField="BatteryType" HeaderText="BatteryType" 
                                    SortExpression="BatteryType" />
                                <asp:BoundField DataField="BatteryLife" HeaderText="BatteryLife" 
                                    SortExpression="BatteryLife" />
                                <asp:BoundField DataField="StorageSize" HeaderText="Size" 
                                    SortExpression="StorageSize" />
                                <asp:BoundField DataField="HdMovie" HeaderText="HdMovie" 
                                    SortExpression="HdMovie" />
                                <asp:BoundField DataField="BuiltInMemory" HeaderText="Memory" 
                                    SortExpression="BuiltInMemory" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" Text="Edit"  
                                                   PostBackUrl='<%# Eval("ProductId", "EditCamera.aspx?ProductId={0}") %>' 
                                                   Height="29px" Width="64px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" Height="35px" 
                                HorizontalAlign="Center" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="35px" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
             
             
             
             
             
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Camera]"></asp:SqlDataSource>
             
             
             
             
             
             <div class="shell">

	
	
				
				

                  
                                

                      </div>
					
				
					<div class="cl">&nbsp;</div>
			
			
			</div>

            </div>




</asp:Content>
