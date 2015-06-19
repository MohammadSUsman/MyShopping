<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="MyShoppingProject.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            width: 100%;
        }
        .style6
        {
            width: 562px;
        }
        .style8
        {
            width: 146px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   &nbsp;<!-- main --><div class="main">
			
			<div class="shell">
				<!-- cols -->
				<section class="cols">
					<div class="col">
					


<asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
                            BorderWidth="0px" CellPadding="4" DataKeyField="ProductId" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" ShowFooter="False" 
                            ShowHeader="False">
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="White" />
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="168px" 
            ImageUrl='<%# Eval("Image") %>' Width="208px" />
      
    </ItemTemplate>
    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>


					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Products] WHERE ([ProductId] = @ProductId)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>


					</div>

                    <div class="col10">

                  <asp:DataList ID="DataList2" runat="server" DataKeyField="ProductId" 
                            DataSourceID="SqlDataSource2">
                      <ItemTemplate>
                          <br />
                          <br />
                          <br />
                          <strong><span class="style1">Name:</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          &nbsp;
                          <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                          <br />
                          
                          <strong><span class="style1">Price:</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label2" runat="server" Text="Rs."  Font-Size="20px" ForeColor="#D70000"></asp:Label>
                          <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#D70000" Text='<%# Eval("Price") %>' />
                          <br />
                          
                          <span class="style1"><strong>UsbType:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="UsbTypeLabel" runat="server" Text='<%# Eval("UsbType") %>' />
                          <br />
                          
                          <strong><span class="style1">Warranty:</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="WarrantyLabel" runat="server" Text='<%# Eval("Warranty") %>' />
                          <br />
                          
                          <strong><span class="style1">Quantity Available:&nbsp;&nbsp;&nbsp;&nbsp; </span>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                          (Items Left)<br /> <span class="style1">Availability :</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          Yes<br />
                                                    
                          <div class="leftAttribute">
                              <span class="style1"><strong>Shipping Info:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              24- 48 Hours</div>
                          <div class="rightAttribute">
                              <div class="boxAttribute">
                                  <div class="leftAttribute">
                                      <span class="style1"><strong>Payment details:&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cash on 
                                      Delivery</div>
                                  <div class="rightAttribute">
                                  </div>
                              </div>
                          </div>
                          <br />


                          <a href='ShoppingCart.aspx?cart_id=<%# Eval("ProductId") %>'><img src="Images/bg/AddtoCart1.jpg"  width="140" height="100" /></a>
                           
                      
                              


                          <br />
                          <br />
                      </ItemTemplate>
                        </asp:DataList>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Products] WHERE ([ProductId] = @ProductId)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>

                 <div class="cl">&nbsp;</div>
                 <br />
                 <hr />
               <h1 style="color:Gray;font-size:20px;margin-left:20px;margin-top:15px;">Product Specification</h1>  
                 <hr />
                 <br />

     <!-- Laptop Description -->

<asp:DataList ID="DataList3" runat="server" aDataKeyField="LaptopId" 
                    DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333">
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <ItemTemplate>
        <table border="3px" class="style2" frame="border">
            <tr>
                <td bgcolor="White" class="style8">
                    Processor :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="ProcessorLabel" runat="server" Text='<%# Eval("Processor") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Ram :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="RamLabel" runat="server" Text='<%# Eval("Ram") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Camera :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="CameraLabel" runat="server" Text='<%# Eval("Camera") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Hard Size :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="HardSizeLabel" runat="server" Text='<%# Eval("HardSize") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Lan :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="LanLabel" runat="server" Text='<%# Eval("Lan") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Wifi :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="WifiLabel" runat="server" Text='<%# Eval("Wifi") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Hdmi :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="HdmiLabel" runat="server" Text='<%# Eval("Hdmi") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Battery Time :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BatteryTimeLabel" runat="server" 
                        Text='<%# Eval("BatteryTime") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Screen Size :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="ScreenSizeLabel" runat="server" 
                        Text='<%# Eval("ScreenSize") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Operating System :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    &nbsp;<asp:Label ID="OperatingSystemLabel" runat="server" 
                        Text='<%# Eval("OperatingSystem") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Graphics Memory :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="GraphicsMemoryLabel" runat="server" 
                        Text='<%# Eval("GraphicsMemory") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Bluetooth :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BluetoothLabel" runat="server" Text='<%# Eval("Bluetooth") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Dedicated Graphics :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="DedicatedGraphicsLabel" runat="server" 
                        Text='<%# Eval("DedicatedGraphics") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Color :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Color") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Battery Cells :</td>
               <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("BatteryCell") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Usb Ports :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("USBPorts") %>' />
                </td>
            </tr>
        </table>
<br />
    </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" 
        ForeColor="#333333" />
                </asp:DataList>


                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Laptop] WHERE ([ProductId] = @ProductId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                Type="Int32" />
                        </SelectParameters>
                </asp:SqlDataSource>



                <!-- Mobile Description -->

<asp:DataList ID="DataList4" runat="server" DataKeyField="MobileId" 
                    DataSourceID="SqlDataSource4">
    <ItemTemplate>
        <table border="3px" class="style2" frame="border">
            <tr>
                <td bgcolor="White" class="style8">
                    Processor :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Processor") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Ram :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="RamLabel" runat="server" Text='<%# Eval("Ram") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Builtin Memory :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BuiltinMemoryLabel" runat="server" 
                        Text='<%# Eval("BuiltinMemory") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Display Size :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="DisplaySizeLabel" runat="server" 
                        Text='<%# Eval("DisplaySize") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Camera :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="CameraLabel" runat="server" Text='<%# Eval("Camera") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Call Time :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="CallTimeLabel" runat="server" Text='<%# Eval("CallTime") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Battery Type :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BatteryTypeLabel" runat="server" 
                        Text='<%# Eval("BatteryType") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Color :</td>
               <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Color") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Sims :</td>
             <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Sims") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Audio Player :</td>
               <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("AudioPlayer") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Video Player :</td>
               <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("VideoPlayer") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    FM Radio :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("FmRadio") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Internet :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("Internet") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Wifi :</td>
               <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("Wifi") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Battery Timing :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("BatteryTiming") %>' />
                </td>
            </tr>
        </table>
<br />
    </ItemTemplate>
                </asp:DataList>





                    
				<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Mobile] WHERE ([ProductId] = @ProductId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <!-- Tablet Description -->




           <asp:DataList ID="DataList5" runat="server" DataKeyField="TabletId" 
                    DataSourceID="SqlDataSource5">
               <ItemTemplate>
                   <table border="3px" class="style2" frame="border">
                       <tr>
                           <td bgcolor="White" class="style8">
                               Processor :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="ProcessorLabel" runat="server" Text='<%# Eval("Processor") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Ram :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="RamLabel" runat="server" Text='<%# Eval("Ram") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Storage Size :
                           </td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="StorageSizeLabel" runat="server" 
                                   Text='<%# Eval("StorageSize") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Camera :
                           </td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="CameraLabel" runat="server" Text='<%# Eval("Camera") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Bluetooth :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="BluetoothLabel" runat="server" Text='<%# Eval("Bluetooth") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Wifi :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="WifiLabel" runat="server" Text='<%# Eval("Wifi") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Size :
                           </td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Battery Time :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="BatteryTimeLabel" runat="server" 
                                   Text='<%# Eval("BatteryTime") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Operating System :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="OperatingSystemLabel" runat="server" 
                                   Text='<%# Eval("OperatingSystem") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Battery Cell :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="BatteryCellLabel" runat="server" 
                                   Text='<%# Eval("BatteryCell") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Color :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               TouchScreen :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="TouchScreenLabel" runat="server" 
                                   Text='<%# Eval("TouchScreen") %>' />
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="White" class="style8">
                               Usb Port :</td>
                           <td bgcolor="#E2E2E2" class="style6">
                               <asp:Label ID="UsbPortLabel" runat="server" Text='<%# Eval("UsbPort") %>' />
                           </td>
                       </tr>
                   </table>
                   <br />
               </ItemTemplate>
                </asp:DataList>





                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Tablet] WHERE ([ProductId] = @ProductId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>





                <!-- Ipod Description -->


          <asp:DataList ID="DataList6" runat="server" DataKeyField="IpodId" 
                    DataSourceID="SqlDataSource6">
              <ItemTemplate>
                  <table border="3px" class="style2" frame="border">
                      <tr>
                          <td bgcolor="White" class="style8">
                              Usb :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="UsbLabel" runat="server" Text='<%# Eval("Usb") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Screen Size :
                          </td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="ScreenSizeLabel" runat="server" 
                                  Text='<%# Eval("ScreenSize") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Audio Formats :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="AudioFormatsLabel" runat="server" 
                                  Text='<%# Eval("AudioFormats") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Video Formats :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="VideoFormatsLabel" runat="server" 
                                  Text='<%# Eval("VideoFormats") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Weight :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="WeightLabel" runat="server" Text='<%# Eval("Weight") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Storage Capacity :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="StorageCapacityLabel" runat="server" 
                                  Text='<%# Eval("StorageCapacity") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Battery Life :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="BatteryLifeLabel" runat="server" 
                                  Text='<%# Eval("BatteryLife") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Battery Type :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="BatteryTypeLabel" runat="server" 
                                  Text='<%# Eval("BatteryType") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Bluetooth :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="BluetoothLabel" runat="server" Text='<%# Eval("Bluetooth") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Camera :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="CameraLabel" runat="server" Text='<%# Eval("Camera") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Fm Radio :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="FmRadioLabel" runat="server" Text='<%# Eval("FmRadio") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="White" class="style8">
                              Video Playback :</td>
                          <td bgcolor="#E2E2E2" class="style6">
                              <asp:Label ID="VideoPlaybackLabel" runat="server" 
                                  Text='<%# Eval("VideoPlayback") %>' />
                          </td>
                      </tr>
                  </table>
                  <br />
              </ItemTemplate>
                </asp:DataList>



                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Ipod] WHERE ([ProductId] = @ProductId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>



                <!-- Camera Description -->





<asp:DataList ID="DataList7" runat="server" DataKeyField="CameraId" 
                    DataSourceID="SqlDataSource7">
    <ItemTemplate>
        <table border="3px" class="style2" frame="border">
            <tr>
                <td bgcolor="White" class="style8">
                    Mega Pixel :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="MegaPixelLabel" runat="server" Text='<%# Eval("MegaPixel") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Optical Zoom :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="OpticalZoomLabel" runat="server" 
                        Text='<%# Eval("OpticalZoom") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Lcd Size :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="LcdSizeLabel" runat="server" Text='<%# Eval("LcdSize") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Lcd Touchscreen :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="LcdTouchscreenLabel" runat="server" 
                        Text='<%# Eval("LcdTouchscreen") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Battery Type :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BatteryTypeLabel" runat="server" 
                        Text='<%# Eval("BatteryType") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Battery Life :
                </td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BatteryLifeLabel" runat="server" 
                        Text='<%# Eval("BatteryLife") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    Storage Size :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="StorageSizeLabel" runat="server" 
                        Text='<%# Eval("StorageSize") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    HdMovie :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="HdMovieLabel" runat="server" Text='<%# Eval("HdMovie") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style8">
                    BuiltIn Memory :</td>
                <td bgcolor="#E2E2E2" class="style6">
                    <asp:Label ID="BuiltInMemoryLabel" runat="server" 
                        Text='<%# Eval("BuiltInMemory") %>' />
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
                </asp:DataList>












                    
				<asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  
                    SelectCommand="SELECT * FROM [Camera] WHERE ([ProductId] = @ProductId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>












                    
				</section>
				<!-- end of cols -->
			</div>
			<!-- end of shell -->
			
		</div>
		<!-- end of main -->
		

</asp:Content>
