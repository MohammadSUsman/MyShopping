<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="MyShoppingProject.Admin.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="main" style="width:100%; height:auto;" >

    <div class="search-bar-container" style="height:auto; width:100%; ">

    <div  style="height:auto; width:97%;  padding:10px;  margin:10px auto; ">
               <ul style="list-style-type:none; width:100%; margin-left:-10px; margin-bottom:20px;">
                <li style="position:relative; width:25%; float:left;"><div id ="SearchByProductName" style="width:100%; height:100%; background-color:Yellow; padding:10px; text-align:center;"><b>Search By Product Name</b></div></li>
                <li style="position:relative;width:25%; float:left;"><div  id="SearchByCountry" style="width:100%; height:100%; background-color:Orange;padding:10px; text-align:center;"><b>Search By Country Name</b></div></li>
                <li style="position:relative;width:25%; float:left;"><div  id="SearchByDate" style="width:100%; height:100%; background-color:Olive;padding:10px; text-align:center;"><b>Search By Date</b></div></li>
                <li style="position:relative;width:25%; float:left;"><div  id="SearchbtwnDates" style="width:100%; height:100%; background-color:Pink;padding:10px; text-align:center;"><b>Search Between Dates</b></div></li>
               </ul>
             </div>

            <div  id="ProductNameSearch" style="height:auto; width:80%;  padding:10px;  margin:10px auto; display:none; ">
                <h3>Search By Product Name</h3><hr/>
                <div style="height:auto;  text-align:center; padding-top:15px;">
                <asp:TextBox ID="txtSearchbyName" runat="server" Placeholder="Product Name"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                        Height="30px" ValidationGroup="byname" Width="80px" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtSearchbyName" ErrorMessage="Field is required." 
                        ForeColor="Red" ValidationGroup="byname"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtSearchbyName" ErrorMessage="Invalid Product Name." 
                        ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*" ValidationGroup="byname"></asp:RegularExpressionValidator>
                </div>
             </div>

             <div id="CountryNameSearch" style="height:auto; width:80%;  padding:10px;  margin:10px auto;  display:none;">
                <h3>Search By Country Name</h3><hr/>
                 <div style="height:auto;  text-align:center; padding-top:15px;">
                 <asp:TextBox ID="txtSearchbyCountry" runat="server" Placeholder="Country Name"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" 
                         Height="30px" ValidationGroup="bycountry" Width="80px" />
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="txtSearchbyCountry" ErrorMessage="Field is required." 
                         ForeColor="Red" ValidationGroup="bycountry"></asp:RequiredFieldValidator>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                         ControlToValidate="txtSearchbyCountry" ErrorMessage="Invalid Country Name." 
                         ValidationExpression="[A-Z]?[a-z]+\s*[A-Z]*[a-z]*" ValidationGroup="bycountry"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </div>
             </div>

             <div id="SearchbetweenDates" style="height:auto; width:80%;  padding:10px;  margin:10px auto; display:none;  ">
                <h3>Search Between Dates</h3><hr/>
                 <div style="height:auto;  text-align:center; padding-top:15px;">
                 
                 <asp:TextBox ID="txtStartDate" runat="server" Placeholder="Start Date(mm/dd/yy)"></asp:TextBox>&nbsp;&nbsp;

                 <asp:TextBox ID="txtEndDate" runat="server" Placeholder="End Date(mm/dd/yy)"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                 <asp:Button ID="Button4" runat="server" Text="Search" onclick="Button4_Click" 
                         Height="30px" ValidationGroup="betweendates" Width="80px" />
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ControlToValidate="txtStartDate" ErrorMessage="Start Date is required." 
                         ForeColor="Red" ValidationGroup="betweendates"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                         ControlToValidate="txtEndDate" ErrorMessage="End date is required." 
                         ForeColor="Red" ValidationGroup="betweendates"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                         ControlToValidate="txtStartDate" ErrorMessage="Invalid Start date." 
                         ValidationExpression="[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}" 
                         ValidationGroup="betweendates"></asp:RegularExpressionValidator>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                         ControlToValidate="txtEndDate" ErrorMessage="Invalid End date." 
                         ValidationExpression="[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}" 
                         ValidationGroup="betweendates"></asp:RegularExpressionValidator>
                     <br />
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                         ControlToCompare="txtStartDate" ControlToValidate="txtEndDate" 
                         ErrorMessage="End date must be greater than the Start date." 
                         Operator="GreaterThan" Type="Date" ValidationGroup="betweendates"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </div>
             </div>

              <div id="DateSearch" style="height:auto; width:80%;  padding:10px;  margin:10px auto; display:none;  ">
                <h3>Search By Date</h3><hr/>
                 <div style="height:auto;  text-align:center; padding-top:15px;">
                  <asp:TextBox ID="txtDate" runat="server" Placeholder="Enter Date(mm/dd/yy)"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" 
                         Height="30px" ValidationGroup="bydate" Width="80px" />
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ControlToValidate="txtDate" ErrorMessage="Field is required." ForeColor="Red" 
                         ValidationGroup="bydate"></asp:RequiredFieldValidator>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                         ControlToValidate="txtDate" ErrorMessage="Enter date in correct format." 
                         ValidationExpression="[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}" ValidationGroup="bydate"></asp:RegularExpressionValidator>
                  </div>
             </div>
    </div>

    <div style="height:auto; width:100%; text-align:center;">
            
        <asp:Label ID="Label1" runat="server" 
            Text="Sorry ! We didnot find any result against your query." ForeColor="Red" 
            Visible="False"></asp:Label>
            <div  class="gridview-container" style="height:auto; width:100%;  margin:10px auto;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onpageindexchanging="GridView1_PageIndexChanging" Width="100%" 
                    Font-Italic="True" Font-Size="1em" Height="30px" HorizontalAlign="Center" 
                    PageSize="12">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" Height="25px" HorizontalAlign="Left" 
                        VerticalAlign="Middle" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                        Height="50px" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Width="50px" Height="35px" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#SearchByProductName").click(function () {
            $("#ProductNameSearch").slideToggle("slow");
            $("#CountryNameSearch").slideUp("slow");
            $("#DateSearch").slideUp("slow");
            $("#SearchbetweenDates").slideUp("slow");
        });
    });

    $(document).ready(function () {
        $("#SearchByCountry").click(function () {
            $("#CountryNameSearch").slideToggle("slow");
            $("#ProductNameSearch").slideUp("slow");
            $("#DateSearch").slideUp("slow");
            $("#SearchbetweenDates").slideUp("slow");
        });
    });

    $(document).ready(function () {
        $("#SearchByDate").click(function () {
            $("#DateSearch").slideToggle("slow");
            $("#ProductNameSearch").slideUp("slow");
            $("#CountryNameSearch").slideUp("slow");
            $("#SearchbetweenDates").slideUp("slow");
        });

        $(document).ready(function () {
            $("#SearchbtwnDates").click(function () {
                $("#SearchbetweenDates").slideToggle("slow");
                $("#ProductNameSearch").slideUp("slow");
                $("#DateSearch").slideUp("slow");
                $("#CountryNameSearch").slideUp("slow");
            });
        });
    });
</script>
</asp:Content>

