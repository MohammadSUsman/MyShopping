<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="ViewTabletSpecification.aspx.cs" Inherits="MyShoppingProject.Admin.ViewTabletSpecification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div style="height:auto">

<h1 style="margin-bottom:45px;font-size:2em; text-align:center;">View Tablet Specification</h1>
					
                    <div class="col">

                       
                                                 
                             






                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="TabletId" 
                            DataSourceID="SqlDataSource1" BackColor="White" 
                            BorderStyle="None" CellPadding="3" GridLines="None" Font-Names="Arial" 
                            Font-Size="1em" Height="35px" Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="TabletId" HeaderText="TabletId" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="TabletId" />
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                                    SortExpression="ProductId" />
                                <asp:BoundField DataField="Processor" HeaderText="Processor" 
                                    SortExpression="Processor" />
                                <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                                <asp:BoundField DataField="StorageSize" HeaderText="StorageSize" 
                                    SortExpression="StorageSize" />
                                <asp:BoundField DataField="Camera" HeaderText="Camera" 
                                    SortExpression="Camera" />
                                <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
                                    SortExpression="Bluetooth" />
                                <asp:BoundField DataField="Wifi" HeaderText="Wifi" SortExpression="Wifi" />
                                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                                <asp:BoundField DataField="BatteryTime" HeaderText="BatteryTime" 
                                    SortExpression="BatteryTime" />
                                <asp:BoundField DataField="OperatingSystem" HeaderText="OperatingSystem" 
                                    SortExpression="OperatingSystem" />
                                <asp:BoundField DataField="BatteryCell" HeaderText="BatteryCell" 
                                    SortExpression="BatteryCell" />
                                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                <asp:BoundField DataField="TouchScreen" HeaderText="TouchScreen" 
                                    SortExpression="TouchScreen" />
                                <asp:BoundField DataField="UsbPort" HeaderText="UsbPort" 
                                    SortExpression="UsbPort" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" Text="Edit"  PostBackUrl='<%# Eval("ProductId", "EditTablet.aspx?ProductId={0}") %>' 
                                                   Height="29px" Width="64px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="Gray" ForeColor="Black" />
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
                            SelectCommand="SELECT * FROM [Tablet]"></asp:SqlDataSource>
                             






			 <div class="shell">

	
	
				
				

                  
                                

                      </div>
					
				
					<div class="cl">&nbsp;</div>
			
			
			</div>


            </div>

</asp:Content>
