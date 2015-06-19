<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="ViewIpodSpecification.aspx.cs" Inherits="MyShoppingProject.Admin.ViewIpodSpecification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





<div style="height:auto">

 <h1 style="margin-bottom:45px;margin-left:400px;font-size:36px;">View Ipod Specification</h1>
					
                    <div class="col">

             
                         
                         
                         
                         
                         
                         
                         
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="IpodId" 
                            DataSourceID="SqlDataSource1" BackColor="White" 
                            BorderStyle="None" CellPadding="3" GridLines="None" Font-Names="Arial" 
                            Font-Size="1em" HorizontalAlign="Center" ShowFooter="True" Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="IpodId" HeaderText="IpodId" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="IpodId" />
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                                    SortExpression="ProductId" />
                                <asp:BoundField DataField="Usb" HeaderText="Usb" SortExpression="Usb" />
                                <asp:BoundField DataField="ScreenSize" HeaderText="ScreenSize" 
                                    SortExpression="ScreenSize" />
                                <asp:BoundField DataField="AudioFormats" HeaderText="AudioFormats" 
                                    SortExpression="AudioFormats" />
                                <asp:BoundField DataField="VideoFormats" HeaderText="VideoFormats" 
                                    SortExpression="VideoFormats" />
                                <asp:BoundField DataField="Weight" HeaderText="Weight" 
                                    SortExpression="Weight" />
                                <asp:BoundField DataField="StorageCapacity" HeaderText="StorageCapacity" 
                                    SortExpression="StorageCapacity" />
                                <asp:BoundField DataField="BatteryLife" HeaderText="BatteryLife" 
                                    SortExpression="BatteryLife" />
                                <asp:BoundField DataField="BatteryType" HeaderText="BatteryType" 
                                    SortExpression="BatteryType" />
                                <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
                                    SortExpression="Bluetooth" />
                                <asp:BoundField DataField="Camera" HeaderText="Camera" 
                                    SortExpression="Camera" />
                                <asp:BoundField DataField="FmRadio" HeaderText="FmRadio" 
                                    SortExpression="FmRadio" />
                                <asp:BoundField DataField="VideoPlayback" HeaderText="VideoPlayback" 
                                    SortExpression="VideoPlayback" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server"  PostBackUrl='<%# Eval("ProductId", "EditIpod.aspx?ProductId={0}") %>' 
                                                   Height="29px" Width="64px" Text="Edit" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" Height="35px" 
                                HorizontalAlign="Center" Width="35px" />
                            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" 
                                Height="40px" />
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
                            SelectCommand="SELECT * FROM [Ipod]"></asp:SqlDataSource>
                         
                         
                         
                         
                         
                                                 
                        
			 <div class="shell">

	
	
				
				

                  
                                

                      </div>
					
				
					<div class="cl">&nbsp;</div>
			
			
			</div>

            </div>



</asp:Content>
