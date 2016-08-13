<%@ Page Title="" Language="C#" MasterPageFile="~/EnglishSite.Master" AutoEventWireup="true" CodeBehind="MemberAreaNew.aspx.cs" Inherits="MCvanderBergCalc.language.en.MemberAreaNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="left-area">
        <div id="breadcrumbs">
            <a href="home.aspx">Home</a> <span class="raquo">&raquo;</span>

            MCMember Area				
        </div>
        <!-- end #breadcrumbs -->
        <div id="entries">
            <div class="entry post clearfix">
                <h1 class="title">MCMember Area</h1>

                <div class="welcome">
                    Hi
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                    ​, welcome to your personal MC-Web-page, with compliments from M.C. van der Berg Incorporated.
                </div>

                <table>
                    <tr>
                        <td style="width: 400px;">
                            <fieldset>
                                <legend>Our records show for you:</legend>

                                <label for="log" style="padding-bottom: 0px;">Birth Name:</label><asp:Label ID="lblBirthName" runat="server" Text="Label" CssClass="PernsonalInfoLabel"></asp:Label>
                                <br />

                                <label for="log">Nick Name:</label><asp:Label ID="lblNickName" runat="server" Text="Label" CssClass="PernsonalInfoLabel"></asp:Label>
                                <br />

                                <label for="pwd">Surname:</label><asp:Label ID="lblSurname" runat="server" Text="Label" CssClass="PernsonalInfoLabel"></asp:Label>
                                <br />

                                <label for="pwd">Email address:</label><asp:Label ID="lblEmail" runat="server" Text="Label" CssClass="PernsonalInfoLabel"></asp:Label>
                                <br />

                                <label for="pwd">Cell phone number:</label><asp:Label ID="lblCell" runat="server" Text="Label" CssClass="PernsonalInfoLabel"></asp:Label>
                                <br />

                                <label for="pwd">Agency:</label><asp:Label ID="lblAgency" runat="server" Text="Label" CssClass="PernsonalInfoLabel"></asp:Label>
                                <br />
                                <br />

                            </fieldset>
                        </td>
                        <td style="text-align: center">
                            <asp:Image ID="imagephoto" runat="server" Height="150px" CssClass="MemberPhotos" />
                        </td>
                    </tr>
                </table>



                <div class="pf-content">
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <fieldset>
                                        <span class="MemberAreaContentheadings">If incorrect please update your personal information by  <a href="#anchor0" id="divcat0">clicking here</a></span>

                                        <div id="divcat0_div" class="memberareablock">
                                            <a name="anchor0"></a>
                                            ​<span>​If you have changed agencies, please contact us urgently on <b>012 660 6109</b> to correct your profile.</span>
                                            <br />
                                            <br />
                                            <label for="log">Birth Name</label><div class="div_text">
                                                <asp:TextBox ID="txtFirstname" runat="server" Width="300"></asp:TextBox>
                                            </div>
                                            <label for="log">Nick Name</label><div class="div_text">
                                                <asp:TextBox ID="txtNickName" runat="server" Width="300"></asp:TextBox>
                                            </div>
                                            <label for="pwd">Surname</label><div class="div_text">
                                                <asp:TextBox ID="txtSurname" runat="server" Width="300"></asp:TextBox>
                                            </div>
                                            <label for="pwd">Email address</label><div class="div_text">
                                                <asp:TextBox ID="txtEmail" runat="server" Width="300"></asp:TextBox>
                                            </div>
                                            <label for="pwd">Cell phone number</label><div class="div_text">
                                                <asp:TextBox ID="txtCell" runat="server" Width="300"></asp:TextBox>
                                            </div>
                                            <div class="button_div">
                                                <asp:Button ID="btnLogin" runat="server" Text="Update" OnClick="btnLogin_Click" CssClass="button button1" />
                                            </div>

                                        </div>

                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />


                    <div class="pf-content">


                        <div>
                            <fieldset>

                                <legend>If you want to send a complimentary slip please populate the relevant fields below. To learn more about what a complimentary slip is <a href="#anchor1" id="divcat1">click here</a>.</legend>

                                <div id="divcat1_div" class="memberareablock">
                                    <a name="anchor1"></a>
                                    <p>
                                        <span style="font-size: 17px; font-weight: bold">Dear MC-Member,</span>
                                    </p>

                                    <p>
                                        We value your loyal support and as a token of our appreciation we have created this personal page for you to enable you to e-mail valuable information to your potential client.
                                    </p>
                                    <p>
                                        <span style="font-size: 17px; font-weight: bold">Category 1 – how to complete this field </span>
                                    </p>
                                    <p>
                                        Before you start making your selection on the various options available, please note that this field needs to be completed in order for you to be able to send an email to your client.  
                                    </p>
                                    <p>
                                        It contains the information you would like to include in your email to your client e.g. Subject line: you might want to use the property description or anything that would give your client and idea of what the e-mail entails.  The next field is how you would like to address your client e.g. Dear Mr or Dear Dr Strydom.  Your clients email address needs can be inserted in the next field and in then include your message to your client e.g.: Thank you for the privilege in meeting with you today etc. 
Know start completing all the relevant fields below before proceeding with your selections.
                                    </p>
                                    <p>
                                        <b>Should you require any assistance please contact us on 012 660 6109 or send us an e-mail to web@mcvdberg.co.za </b>
                                    </p>
                                </div>

                                <div>
                                </div>

                                <label for="pwd">Subject Line</label><div class="div_text">
                                    <asp:TextBox ID="txtSubjecxt" runat="server" Width="400"></asp:TextBox>
                                </div>
                                <label for="log">How do you want to address the person you send mail to e.g.: Dear Mr. Kotze</label><div class="div_text">
                                    <asp:TextBox ID="txtDear" runat="server" Width="400"></asp:TextBox>
                                </div>

                                <label for="pwd">Email address of person you want to send mail to.</label><div class="div_text">
                                    <asp:TextBox ID="txtRecipientEmail" runat="server" Width="400"></asp:TextBox>
                                </div>
                                <label for="pwd">Any personal message you want to include.</label><div class="div_text">
                                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="6" Width="400"></asp:TextBox>
                                </div>
                            </fieldset>
                        </div>



                        <br />
                        <div class="pf-content">
                            <fieldset>
                                <legend>Choose from the below content made available to you</legend>
                            </fieldset>


                            <asp:Panel ID="panelIntroPacks" runat="server" Visible="True">


                                <legend>Introduction Packs <a href="#anchor2" id="divcat2">To select click here</a></legend>

                                <div>
                                    <ul>
                                        <li>You may choose either the Seller or Purchaser Introduction pack, to email to your client. </li>
                                        <li>Click on the Select here button to make you selection, </li>
                                        <li>You will note that the button changes colour and is marked Selected.</li>
                                        <li>Once you have made your selection, click on the Send button. </li>
                                    </ul>

                                </div>
                                <div class="memberareablock" id="divcat2_div">
                                    <a name="anchor2"></a>
                                    <table>
                                        <tr>
                                            <td style="padding-right: 10px; vertical-align: top;">
                                                <div class="MemberAreaContentheadingsItems">

                                                    <%--   <asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton6_CheckedChanged" />--%>
                                                    <label class="MemberAreaContentheadings">Seller</label>
                                                        <label class="MemberAreaContentheadingsItemsSingle" style="font-weight: bold;">
                                                    </label>
                                                    <asp:Panel ID="IntroductionPackSeller" runat="server" Enabled="true" ForeColor="#999999">
                                                        <div class="MemberAreaContentheadingsItems">

                                                           
                                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPromotionalVideo" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /> <label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">
                                                                &nbsp;MCPromotionalVideo</label></asp:HyperLink>

                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            
                                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCSellersVideo" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /><label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">
                                                                &nbsp;MCSellersVideo</label></asp:HyperLink>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">

                                                            
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCSellersGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /><label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">
                                                                &nbsp;MCSellersGuide</label></asp:HyperLink>

                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            <asp:Button ID="btnIntroSeller" runat="server" Text="Send" OnClick="btnIntroSeller_Click1" CssClass="button button1" />
                                                        </div>
                                                    </asp:Panel>


                                                    <asp:Panel ID="Panel1" runat="server" CssClass="BottomMessage" Visible="False">
                                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="GenSendButton" runat="server" Text="Send to client" ForeColor="Black" OnClick="btnIntroSeller_Click2" />
                                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button8" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" CssClass="button button1" />
                                                    </asp:Panel>

                                                </div>
                                            </td>
                                            <td style="border-left: solid 1px gray; padding-left: 10px;">
                                                <div class="MemberAreaContentheadingsItems">

                                                    <%--<asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />--%>
                                                    <label class="MemberAreaContentheadings">
                                                        Purchaser
                                                    </label>
                                                   
                                                    <asp:Panel ID="IntroPurchaser" runat="server" Enabled="True" ForeColor="#999999">
                                                        <div class="MemberAreaContentheadingsItems">
                                                           
                                                          <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPromotionalVideo" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /> <label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">
                                                                 &nbsp;MCPromotionalVideo</label></asp:HyperLink>


                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            
                                                          <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPurchasersVideo" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /><label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">
                                                                 &nbsp;MCPurchasersVideo</label></asp:HyperLink>
                                                     
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            
                                                          <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPurchasersGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /><label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">
                                                                 &nbsp;MCPurchasersGuide</label></asp:HyperLink>

                                                            

                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
  
                                                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/McFeeSheet" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" />                                                          <label class="MemberAreaContentheadingsItemsSingle">
                                                                 &nbsp;MCFeeSheets</label></asp:HyperLink>
                                                            
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            <label class="MemberAreaContentheadingsItemsSingle">
                                                                <asp:Label ID="Label4" runat="server" Text="You have to select at least one item" Font-Size="8px" ForeColor="Red" Visible="false"></asp:Label>&nbsp;</label>
                                                            <asp:Button ID="btnIntroPurchaser" runat="server" Text="Send" OnClick="btnIntroPurchaser_Click1" CssClass="button button1" />
                                                        </div>
                                                    </asp:Panel>

                                                    <asp:Panel ID="Panel2" runat="server" CssClass="BottomMessage" Visible="False">
                                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="Button9" runat="server" Text="Send to client" ForeColor="Black" OnClick="btnIntroPurchaser_Click2" />
                                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button10" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" CssClass="button button1" />
                                                    </asp:Panel>

                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                            </asp:Panel>


                            <asp:Panel ID="panel8" runat="server" Visible="True">
                                <legend>General Tools <a href="#" id="divcat3">click here</a></legend>

                                <div>
                                    <ul>
                                        <li>You may choose any of the tools by clicking on the tick box next to the item you wish to include in your email.</li>
                                        <li>Once you have made your selection, click on the Send button</li>

                                    </ul>

                                </div>


                                <div class="MemberAreaContentheadings">

                                    <%-- <asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton7_CheckedChanged" />--%>
                                    Videos
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox1" runat="server" />&nbsp;
                                            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPromotionalVideo" Target="_blank" Font-Size="Larger" ForeColor="White"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" />&nbsp;<label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">MCPromotionalVideo</label></asp:HyperLink>
                                        </div>
                                    <div class="MemberAreaContentheadingsItems">
                                        <asp:CheckBox ID="CheckBox2" runat="server" />&nbsp;
                                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCSellersVideo" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" />&nbsp;<label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">MCSellersVideo</label></asp:HyperLink>
                                    </div>
                                    <div class="MemberAreaContentheadingsItems">
                                        <asp:CheckBox ID="CheckBox3" runat="server" />&nbsp;
                                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPurchasersVideo" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" />&nbsp;<label class="MemberAreaContentheadingsItemsSingle" style="cursor:pointer">MCPurchasersVideo</label></asp:HyperLink>
                                    </div>
                                    <div class="MemberAreaContentheadingsItems">
                                        <label class="MemberAreaContentheadingsItemsSingle">
                                            <asp:Label ID="Label1" runat="server" Text="You have to select at least one item" Font-Size="8px" ForeColor="Red" Visible="false"></asp:Label>&nbsp;</label>

                                    </div>
                                    <%-- <asp:Panel ID="Panel3" runat="server" CssClass="BottomMessage" Visible="False">
                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="Button11" runat="server" Text="Send to client" ForeColor="Black" OnClick="btnVideos_Click2" />
                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button12" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" />
                                    </asp:Panel>--%>
                                </div>


                                <div class="MemberAreaContentheadings">

                                    <%--<asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />--%>Guides &nbsp; &nbsp;<asp:Button ID="Button6" runat="server" Text="Active" CssClass="roundbutton" OnClick="Button6_Click1" />
                                    <asp:Panel ID="Guides" runat="server" Enabled="False" ForeColor="#999999">
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox4" runat="server" />&nbsp;
                                    <label class="MemberAreaContentheadingsItemsSingle">
                                        MCSellersGuide
                                         <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCSellersGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300">
<img src="../../Images/two-small-arrows-to-right.jpg" />
                                         </asp:HyperLink>
                                    </label>
                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox5" runat="server" />&nbsp;
                                    <label class="MemberAreaContentheadingsItemsSingle">
                                        MCPurchasersGuide
                                         <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCPurchasersGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /></asp:HyperLink>
                                    </label>
                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox6" runat="server" />&nbsp;
                                    <label class="MemberAreaContentheadingsItemsSingle">
                                        MCQuickGuide
                                         <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCQuickGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /></asp:HyperLink>
                                    </label>
                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox7" runat="server" />&nbsp;
                                    <label class="MemberAreaContentheadingsItemsSingle">
                                        MCBondGuide
                                         <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/MCBondGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /></asp:HyperLink>
                                    </label>
                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox8" runat="server" />&nbsp;
                                    <label class="MemberAreaContentheadingsItemsSingle">
                                        MCDevelopersGuide
                                         <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/DevelopersGuide" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /></asp:HyperLink>
                                    </label>
                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <label class="MemberAreaContentheadingsItemsSingle">
                                                <asp:Label ID="Label2" runat="server" Text="You have to select at least one item" Font-Size="8px" ForeColor="Red" Visible="false"></asp:Label>&nbsp;</label>
                                            <asp:Button ID="btnGuides" runat="server" Text="Send" OnClick="btnGuides_Click" />
                                        </div>
                                    </asp:Panel>
                                    <%--<asp:Panel ID="Panel4" runat="server" CssClass="BottomMessage" Visible="False">
                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="Button13" runat="server" Text="Send to client" ForeColor="Black" OnClick="btnGuides_Click2" />
                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button14" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" />
                                    </asp:Panel>--%>
                                </div>




                                <div class="MemberAreaContentheadings">

                                    <%--   <asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton5_CheckedChanged" />--%>
                                Fees
                                    <asp:Panel ID="Fees" runat="server" Enabled="False" ForeColor="#999999">
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox35" runat="server" />&nbsp;<label class="MemberAreaContentheadingsItemsSingle">MCostCalculator
                                              <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/mCostCalculator" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /></asp:HyperLink>
                                            </label>
                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <asp:CheckBox ID="CheckBox36" runat="server" />&nbsp;<label class="MemberAreaContentheadingsItemsSingle">MCFeeSheet
                                              <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="http://www.mcvdberg.co.za/language/en/McFeeSheet" Target="_blank" Font-Size="Larger" ForeColor="#FF3300"><img src="http://www.mcvdberg.co.za/Images/two-small-arrows-to-right.jpg" /></asp:HyperLink>
                                            </label>

                                        </div>
                                        <div class="MemberAreaContentheadingsItems">
                                            <label class="MemberAreaContentheadingsItemsSingle">
                                                <asp:Label ID="Label3" runat="server" Text="You have to select at least one item" Font-Size="8px" ForeColor="Red" Visible="false"></asp:Label>&nbsp;</label>
                                            <asp:Button ID="btnFees" runat="server" Text="Send" OnClick="btnFees_Click1" />
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel5" runat="server" CssClass="BottomMessage" Visible="False">
                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="Button15" runat="server" Text="Send to client" ForeColor="Black" OnClick="FeesClick2" />
                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button16" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" />
                                    </asp:Panel>
                                </div>

                            </asp:Panel>



                            <asp:Panel ID="panelCat4" runat="server" BackColor="Aqua" Visible="True">
                                <div class="MemberAreaContentheadings">
                                    Contracts Non Branded
                                <br />
                                    <span class="pdfdownloader">​If you have a problem viewing the contracts, please <a href="https://get.adobe.com/reader/" target="_blank">click here</a></span>
                                    <a href="https://get.adobe.com/reader/" target="_blank">
                                        <img src="../../Images/downloadPDF.jpg" /></a>
                                    <br />
                                    <br />
                                    <table>
                                        <tr>
                                            <td style="padding-right: 10px;">
                                                <div class="MemberAreaContentheadingsItems">

                                                    <%--   <asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton6_CheckedChanged" />--%>

                                                    <label class="MemberAreaContentheadingsItemsSingle">Non-branded contract – Not editable</label>
                                                    <asp:Button ID="Button21" runat="server" Text="Active" CssClass="roundbutton" OnClick="Button21_Click1" />

                                                    <%--<asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />--%>
                                                    <asp:Panel ID="NonBranded" runat="server" Enabled="False" ForeColor="#999999">
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox9" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Contract Information Sheet</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Contract_Information_Sheet_LL.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox10" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                MContract Engels</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/MContract%20Engels.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox11" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - A - Information page  - Purchaser</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_A_Information_page_Purchaser.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox12" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - B - Information page-Seller</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_B_Information_page_Seller.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox13" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - C - Commission agreement</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_C_Commission_agreement.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox14" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - D  - Sale of Purchaser's current property</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_D_Sale_of_Purchaser_current_property.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox15" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - E - Occupation - or Annexure</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_E_Occupation_Annexure.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox16" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - F - Defects</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_F_Defects.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox17" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - G - Property leased to third party</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_G_Property_leased_to_third_party.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox18" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - H - Resolution</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_H_%20Resolution.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox19" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - I - Pre-Incorporation Agreement</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_I_PreIncorporation_Agreement.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox20" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - J - Addendum - General</label><a href="https://mcvdberg.blob.core.windows.net:443/contractsgeneral/English/Annexure_J_Addendum_General.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox21" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Addendum - Bond Shortfall - or Annexure</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Addendum_Bond_Shortfall_Annexure.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            <label class="MemberAreaContentheadingsItemsSingle">
                                                                <asp:Label ID="Label5" runat="server" Text="You have to select at least one item" Font-Size="8px" ForeColor="Red" Visible="false"></asp:Label>&nbsp;</label>
                                                            <asp:Button ID="btnContractNotBranded" runat="server" Text="Send" OnClick="btnContractNotBranded_Click" />
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="Panel6" runat="server" CssClass="BottomMessage" Visible="False">
                                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="Button17" runat="server" Text="Send to client" ForeColor="Black" OnClick="Button22_Click1" />
                                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button18" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" />
                                                    </asp:Panel>
                                                </div>
                                            </td>
                                            <td style="border-left: solid 1px gray; padding-left: 10px;">
                                                <div class="MemberAreaContentheadingsItems">

                                                    <%-- <asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton7_CheckedChanged" />--%>
                                                    <label class="MemberAreaContentheadingsItemsSingle">​Branded contract – Not editable</label><asp:Button ID="Button22" runat="server" Text="Active" CssClass="roundbutton" OnClick="Button22_Click21" />

                                                    <%--<asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />--%>
                                                    <asp:Panel ID="Branded" runat="server" Enabled="False" ForeColor="#999999">
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox22" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Contract Information Sheet</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Contract_Information_Sheet_LL.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox23" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                MContract English</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/MContract Engels.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox24" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - A - Information page  - Purchaser</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_A_Information_page_Purchaser.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox25" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - B - Information page-Seller</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_B_Information_page_Seller.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox26" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - C - Commission agreement</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_C_Commission_agreement.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox27" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - D  - Sale of Purchaser's current property</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_D_Sale_of_Purchaser_current_property.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox28" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - E - Occupation - or Annexure</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_E_Occupation_Annexure.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox29" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - F - Defects</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_F_Defects.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox30" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - G - Property leased to third party</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_G_Property_leased_to_third_party.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox31" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - H - Resolution</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/EnglishAnnexure_H_%20Resolution.pdf.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox32" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - I - Pre-Incorporation Agreement</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_I_PreIncorporation_Agreement.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox33" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Annexure - J - Addendum - General</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Annexure_J_Addendum_General.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems" style="padding-left: 20px;">
                                                            <asp:CheckBox ID="CheckBox34" runat="server" />&nbsp;<label class="MemberAreaContractsContentheadingsItemsSingle">
                                                                Addendum - Bond Shortfall - or Annexure</label><a href="https://mcvdberg.blob.core.windows.net/contractsgeneral/English/Addendum_Bond_Shortfall_Annexure.pdf" target="_blank">Print</a>
                                                        </div>
                                                        <div class="MemberAreaContentheadingsItems">
                                                            <label class="MemberAreaContentheadingsItemsSingle">
                                                                <asp:Label ID="Label6" runat="server" Text="You have to select at least one item" Font-Size="8px" ForeColor="Red" Visible="false"></asp:Label>&nbsp;</label>
                                                            <asp:Button ID="btnContractBranded" runat="server" Text="Send" OnClick="btnContractBranded_Click" />
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="Panel7" runat="server" CssClass="BottomMessage" Visible="False">
                                                        We have sent you a test mail.  If you are happy please click
                                <asp:Button ID="Button19" runat="server" Text="Send to client" ForeColor="Black" OnClick="btnContractBranded_Click2" />
                                                        &nbsp; or contact our web support: email: <a style="color: yellow!important;" href="mailto: web@mcvdberg.co.za">web@mcvdberg.co.za</a> │ Contact No: 012 660 6109 to make the necessary changes for you.
                                                <asp:Button ID="Button20" runat="server" Text="Reset" ForeColor="Black" OnClick="Button8_Click" />
                                                    </asp:Panel>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>

                                </div>
                            </asp:Panel>


                            <div class="MemberAreaContentheadingsItems">
                                <label class="MemberAreaContentheadingsItemsSingle">Non-branded contract - Editable</label>
                                <asp:Button ID="Button3" runat="server" Text="Coming soon" Enabled="False" ForeColor="#999999" OnClick="Button4_Click" />
                                <div class="MemberAreaContentheadingsItems">
                                    <label class="MemberAreaContentheadingsItemsSingle">Branded contract - Editable</label>
                                    <asp:Button ID="Button4" runat="server" Text="Coming soon" Enabled="False" ForeColor="#999999" OnClick="Button4_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end .entry -->

                </div>
            </div>
            <!-- end #entries -->
        </div>
        <!-- end #left-area -->



        </label>



    </div>
</asp:Content>
