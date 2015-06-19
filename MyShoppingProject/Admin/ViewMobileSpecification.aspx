<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="ViewMobileSpecification.aspx.cs" Inherits="MyShoppingProject.ViewMobileSpecification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div style="height:auto">

<h1 style="margin-bottom:45px; text-align:center;font-size:2em;">View Mobile Specification</h1>
					
                    <div class="col">

             
                          


                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="MobileId" 
                            DataSourceID="SqlDataSource1" BackColor="White" 
                            BorderStyle="None" CellPadding="3" GridLines="None" Font-Size="1em" 
                            Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="MobileId" HeaderText="MobileId" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="MobileId" />
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                                    SortExpression="ProductId" />
                                <asp:BoundField DataField="Processor" HeaderText="Processor" 
                                    SortExpression="Processor" />
                                <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                                <asp:BoundField DataField="BuiltInMemory" HeaderText="BuiltInMemory" 
                                    SortExpression="BuiltInMemory" />
                                <asp:BoundField DataField="DisplaySize" HeaderText="DisplaySize" 
                                    SortExpression="DisplaySize" />
                                <asp:BoundField DataField="Camera" HeaderText="Camera" 
                                    SortExpression="Camera" />
                                <asp:BoundField DataField="CallTime" HeaderText="CallTime" 
                                    SortExpression="CallTime" />
                                <asp:BoundField DataField="BatteryType" HeaderText="BatteryType" 
                                    SortExpression="BatteryType" />
                                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                <asp:BoundField DataField="Sims" HeaderText="Sims" SortExpression="Sims" />
                                <asp:BoundField DataField="AudioPlayer" HeaderText="AudioPlayer" 
                                    SortExpression="AudioPlayer" />
                                <asp:BoundField DataField="VideoPlayer" HeaderText="VideoPlayer" 
                                    SortExpression="VideoPlayer" />
                                <asp:BoundField DataField="FmRadio" HeaderText="FmRadio" 
                                    SortExpression="FmRadio" />
                                <asp:BoundField DataField="Internet" HeaderText="Internet" 
                                    SortExpression="Internet" />
                                <asp:BoundField DataField="Wifi" HeaderText="Wifi" SortExpression="Wifi" />
                                <asp:BoundField DataField="BatteryTiming" HeaderText="BatteryTiming" 
                                    SortExpression="BatteryTiming" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" Text="Edit"  
                                                   PostBackUrl='<%# Eval("ProductId", "EditMobile.aspx?ProductId={0}") %>' 
                                                   Height="29px" Width="64px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" 
                                Font-Names="Arial" Font-Size="1em" Height="45px" />
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
                            SelectCommand="SELECT * FROM [Mobile]"></asp:SqlDataSource>










			 <div class="shell">

	
	
				
				

                  
                                

                      </div>
					
				
					<div class="cl">&nbsp;</div>
			
			
			</div>


            </div>

</asp:Content>
