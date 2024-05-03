<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentGetway.aspx.cs" Inherits="Online_Health_Management_System.WebForm8" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C/DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>--%>
        <div>
            <%--<asp:Image ID="Image1" runat="server" Height="229px" ImageUrl="" Width="1190px" />--%>
        </div>
        <div>
            <center>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="40px" RepeatDirection="Horizontal" Width="514px" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">Credit Card</asp:ListItem>
                    <asp:ListItem Value="2">Debit Card</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*Please select one of these" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
            </center>
        </div>
        <div>
            <center>
                <asp:Panel ID="PanelDebitCard" runat="server" ScrollBars="Horizontal" Visible="false">
                    <table class="style1">
                        <tr>
                            <td class="style2">Card No</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxDebitCardNo" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxDebitCardNo" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Name on Card</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxDebitCardName" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDebitCardName" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Pin Code</td>
                            <td class="style2">
                                <asp:TextBox ID="TextBoxDebitPincode" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDebitPincode" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Expiry Date</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxDebitCardExpiry" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <%--<cc1:CalenderExtender ID="TextBoxDebitCardExpiry_CalendarExtender" runat="server" Enabled="true" TargetControlID="TextBoxDebitCardExpiry">
                                </cc1:CalenderExtender>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxDebitCardExpiry" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Amount</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBoxDebitAmount" runat="server" Height="30px" Width="234px" ReadOnly="true"></asp:TextBox>
                                <%--<cc1:CalendarExtender ID="TextBoxDebitAmount_CalenderExtender" runat="server" Enabled="true" TargetControlID="TextBoxDebitAmount"></cc1:CalendarExtender>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxDebitAmount" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="style3">
                                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="true" ForeColor="White" Height="29px" Text="Pay" Width="110px" OnClick="Button1_Click" ValidationGroup="GenerateMessage" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" BackColor="Black" Font-Bold="true" ForeColor="White" Height="29px" OnClick="Button3_Click" Text="Cancel" Width="110px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="style3">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="PanelCreditCard" runat="server" Visible="false">
                    <table class="style1">
                        <tr>
                            <td class="style2">Card No</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxCreditCardNo" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCreditCardNo" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Name on Card</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxCreditCardOnName" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxCreditCardOnName" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">CVV No</td>
                            <td>
                                <asp:TextBox ID="TextBoxCreditCardCvvno" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxCreditCardCvvno" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Expiry Date</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxCreditCardExpiryDate" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <%--<cc1:CalendarExtender ID="TextBoxCreditCardExpiryDate_CalendarExtender1" runat ="server" TargetControlID="TextBoxCreditCardExpiryDate"></cc1:CalendarExtender>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxCreditCardExpiryDate" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GeneateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Amount</td>
                            <td class="style3">
                                <asp:TextBox ID="TextBoxCreditAmount" runat="server" Height="30px" Width="234px" ReadOnly="true"></asp:TextBox>
                                <%--<cc1:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="true" TargetControlID="TextBoxDebitAmount">
                                </cc1:CalendarExtender>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxCreditAmount" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GeneateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Security Code</td>
                            <td class="style3">
                                <asp:TextBox ID ="TextBoxSecurityNO" runat="server" Height="30px" Width="234px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxSecurityNO" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="style3">
                                <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" Height="29px" Text="Pay" Width="110px" OnClick="Button2_Click" ValidationGroup="GenerateMessage" /> 
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" BackColor="Black" Font-Bold="true" ForeColor="White" Height="29px"  OnClick="Button4_Click" Text="Cancel" Width="110px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="style3">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </center>
        </div>
    </form>
</body>
</html>
