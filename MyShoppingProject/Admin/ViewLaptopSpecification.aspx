<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="ViewLaptopSpecification.aspx.cs" Inherits="MyShoppingProject.Admin.ViewLaptopSpecification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div style="height:auto">

 <h1 style="text-align:center; font-size:2em; margin-bottom:45px;">View Laptop Specification</h1>
					
                    <div class="col">

             
                                                 
                               <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="LaptopId" 
                            DataSourceID="SqlDataSource1" BackColor="White" 
                                   BorderStyle="None" CellPadding="3" GridLines="None" Height="35px" 
                                   ShowFooter="True" Width="100%">
                                   <AlternatingRowStyle BackColor="#DCDCDC" />
                                   <Columns>
                                       <asp:BoundField DataField="LaptopId" HeaderText="Lap.Id" 
                                           InsertVisible="False" ReadOnly="True" SortExpression="LaptopId" />
                                       <asp:BoundField DataField="ProductId" HeaderText="Prdt.Id" 
                                           SortExpression="ProductId" />
                                       <asp:BoundField DataField="Processor" HeaderText="Processor" 
                                           SortExpression="Processor" />
                                       <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                                       <asp:BoundField DataField="Camera" HeaderText="Camera" 
                                           SortExpression="Camera" />
                                       <asp:BoundField DataField="HardSize" HeaderText="Capacity" 
                                           SortExpression="HardSize" />
                                       <asp:BoundField DataField="Lan" HeaderText="Lan" SortExpression="Lan" />
                                       <asp:BoundField DataField="Wifi" HeaderText="Wifi" SortExpression="Wifi" />
                                       <asp:BoundField DataField="Hdmi" HeaderText="Hdmi" SortExpression="Hdmi" />
                                       <asp:BoundField DataField="BatteryTime" HeaderText="BatteryTime" 
                                           SortExpression="BatteryTime" />
                                       <asp:BoundField DataField="ScreenSize" HeaderText="ScreenSize" 
                                           SortExpression="ScreenSize" />
                                       <asp:BoundField DataField="OperatingSystem" HeaderText="OperatingSystem" 
                                           SortExpression="OperatingSystem" />
                                       <asp:BoundField DataField="GraphicsMemory" HeaderText="GraphicsMemory" 
                                           SortExpression="GraphicsMemory" />
                                       <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
                                           SortExpression="Bluetooth" />
                                       <asp:BoundField DataField="DedicatedGraphics" HeaderText="Graphics" 
                                           SortExpression="DedicatedGraphics" />
                                       <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                       <asp:BoundField DataField="BatteryCell" HeaderText="BatteryCell" 
                                           SortExpression="BatteryCell" />
                                       <asp:BoundField DataField="USBPorts" HeaderText="Ports" 
                                           SortExpression="USBPorts" />
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <asp:Button ID="Button1" runat="server" Text="Edit"  
                                                   PostBackUrl='<%# Eval("ProductId", "EditLaptop.aspx?ProductId={0}") %>' 
                                                   Height="29px" Width="64px" />
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Columns>
                                   <FooterStyle ForeColor="Black" Wrap="False" />
                                   <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" 
                                       Height="45px" />
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
                            SelectCommand="SELECT * FROM [Laptop]"></asp:SqlDataSource>
			 <div class="shell">

	
	
				
				

                  
                                

                      </div>
					
				
					<div class="cl">&nbsp;</div>
			
			
			</div>

            </div>

</asp:Content>
