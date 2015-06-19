<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="MyShoppingProject.log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
				<section class="cols">

                	

						
					<div class="col1" style="margin-left:350px; margin-top:50px;">
                    




						<h1 class="caption1"> LogIn</h1>
                        <p > 
                            <asp:Label ID="Error_message2" runat="server" Font-Size="14px" ForeColor="Red"></asp:Label>
                        </p><hr />
                              
					    <table align="center"  class="style1" id="table">
                            
                            
                           
                            <tr>
                                <td class="style2" colspan="3">
                                <div id ="Error_message" style="width:100% ;display:none; color:Red; height:auto; padding-left:15px; padding-right:30px;" >
                                </div>    </td>
                               
                            </tr>
                            <tr>
                                <td class="style2">
                                    <strong>Email:</strong></td>
                                <td>
                                    <asp:TextBox ID="Emailtxt" runat="server" placeholder="Email" 
                                        ontextchanged="Emailtxt_TextChanged"></asp:TextBox>
                                </td>
                                <td>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <strong>Passwrd:</strong></td>
                                <td>
                                    <asp:TextBox ID="Passwordtxt" runat="server" placeholder="Password" 
                                        Height="31px" TextMode="Password" Width="199px"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Height="27px" Text="LogIn" 
                                        Width="64px" onclick="Button1_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                               
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
						
					
					</div>
					
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
		

</asp:Content>
