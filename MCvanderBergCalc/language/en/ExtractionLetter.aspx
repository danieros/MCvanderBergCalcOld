<%@ Page Title="" Language="C#" MasterPageFile="~/ExtractionLetterEnglishMaster.Master" AutoEventWireup="true" CodeBehind="ExtractionLetter.aspx.cs" Inherits="MCvanderBergCalc.language.en.ExtractionLetter" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="extractionimages" style="display: block;">
        <img class="extractionimage" src="../../Images/MCDevelopersGuide.png" />
    </div>

    <div>
        <div class="extractionguide">
            <a href="DevelopersGuide" target="_blank" style="color:#000;">View full MCDevelopersGuide</a>
        </div>
        <div class="extractioncontent">
            <div class="extractionheading">
               <asp:Literal ID="litHeading" runat="server"></asp:Literal>
            </div>
            <asp:Literal ID="litContent" runat="server"></asp:Literal>

        </div>
    </div>
</asp:Content>
