<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Form.Master" 
CodeBehind="{classname}.aspx.vb" Inherits="CyberScope._{classname}" %>
 
<%@ Register Src="~/CustomControls/CBlabel.ascx" TagName="CBlabel" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBoptionalLinks.ascx" TagName="CBoptionalLinks" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBButtPanel2.ascx" TagName="CBButtPanel" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBtext2.ascx" TagName="CBtext2" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBPickList2.ascx" TagName="CBPickList2" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CbPickListMultiSelect.ascx" TagName="CbPickListMultiSelect" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CbPickListMultiSelectList.ascx" TagName="CbPickListMultiSelectList" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBYesNo.ascx" TagName="CBYesNo" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBnumeric2.ascx" TagName="CBnumeric2" TagPrefix="uc"   %>
<%@ Register Src="~/CustomControls/CBQuestion.ascx" TagName="CBQuestion" TagPrefix="uc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <script type="module" src='<%= ResolveUrl("~/scripts/HVA/HVA_1A.js")%>'></script> 
        <script type="text/javascript" src='<%= ResolveUrl("~/scripts/CustomControls/CbPickListMultiSelect_hva.js")%>'></script>
        <script type="text/javascript" src='<%= ResolveUrl("~/scripts/core/formsSettings.js")%>'></script>
        <table class="table table-sm">
            <tr>
                <td class="SectionHead" colspan="6"> 
                    <uc:CBlabel ID="CBlabelGroup" runat="server" LabelType="Group" GroupName="{GroupName}"  />
                </td>
            </tr>
            <tr >
                <td colspan="6" >
                    <asp:Label ID="lblError" runat="server" ></asp:Label>
                </td>
            </tr>
            <!--controls-->
            <tr>
                <td class="ButtonDiv" colspan="6" style="text-align: left">
                    <uc:CBButtPanel ID="CBButtPanel1" runat="server" />
                </td>
            </tr>

        </table>
    </asp:Panel>
</asp:Content>


