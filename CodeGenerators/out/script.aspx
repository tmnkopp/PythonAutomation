﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Form.Master" 
CodeBehind="2023_A_IG_1A.aspx.vb" Inherits="CyberScope._2023_A_IG_1A" %>
<%@ Register Src="~/CustomControls/CBlabel.ascx" TagName="CBlabel" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBoptionalLinks.ascx" TagName="CBoptionalLinks" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBButtPanel2.ascx" TagName="CBButtPanel" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBtext2.ascx" TagName="CBtext2" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBPickList2.ascx" TagName="CBPickList2" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <script type="text/javascript" src='<%= ResolveUrl("~/scripts/core/formsSettings.js")%>'></script>
        <table class="table table-sm">
            <tr>
                <td class="SectionHead" colspan="6"> 
                    <uc:CBlabel ID="CBlabelGroup" runat="server" LabelType="Group" GroupName="Function1A"  />
                </td>
            </tr>
            <tr >
                <td colspan="6" >
                    <asp:Label ID="lblError" runat="server" ></asp:Label>
                </td>
            </tr>
            
<!-- 1 To what extent does the organization maintain a comprehensive and accurate  -->
<tr id="r-m-1" > 
    <td >
        <uc:CBQuestion ID="CBquestion_1"   LinkEditID="CBPicklist_1" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_1" QuestionNumber="1"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_1" runat="server" LinkEditID="CBPicklist_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 2 To what extent does the organization use standard data elements/taxonomy to -->
<tr id="r-m-2" > 
    <td >
        <uc:CBQuestion ID="CBquestion_2"   LinkEditID="CBPicklist_2" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_2" QuestionNumber="2"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_2" runat="server" LinkEditID="CBPicklist_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 3 To what extent does the organization use standard data elements/taxonomy to -->
<tr id="r-m-3" > 
    <td >
        <uc:CBQuestion ID="CBquestion_3"   LinkEditID="CBPicklist_3" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_3" QuestionNumber="3"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_3" runat="server" LinkEditID="CBPicklist_3"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 4 To what extent has the organization categorized and communicated the import -->
<tr id="r-m-4" > 
    <td >
        <uc:CBQuestion ID="CBquestion_4"   LinkEditID="CBPicklist_4" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_4" QuestionNumber="4"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_4" runat="server" LinkEditID="CBPicklist_4"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 5 To what extent does the organization ensure that information system securit -->
<tr id="r-m-5" > 
    <td >
        <uc:CBQuestion ID="CBquestion_5"   LinkEditID="CBPicklist_5" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_5" QuestionNumber="5"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_5" runat="server" LinkEditID="CBPicklist_5"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 6 To what extent does the organization use an information security architectu -->
<tr id="r-m-6" > 
    <td >
        <uc:CBQuestion ID="CBquestion_6"   LinkEditID="CBPicklist_6" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_6" QuestionNumber="6"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_6" runat="server" LinkEditID="CBPicklist_6"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 7 To what extent have the roles and responsibilities of internal and external -->
<tr id="r-m-7" > 
    <td >
        <uc:CBQuestion ID="CBquestion_7"   LinkEditID="CBPicklist_7" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_7" QuestionNumber="7"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_7" runat="server" LinkEditID="CBPicklist_7"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 8 To what extent has the organization ensured that plans of action and milest -->
<tr id="r-m-8" > 
    <td >
        <uc:CBQuestion ID="CBquestion_8"   LinkEditID="CBPicklist_8" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_8" QuestionNumber="8"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_8" runat="server" LinkEditID="CBPicklist_8"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 9 To what extent does the organization ensure that information about cybersec -->
<tr id="r-m-9" > 
    <td >
        <uc:CBQuestion ID="CBquestion_9"   LinkEditID="CBPicklist_9" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_9" QuestionNumber="9"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_9" runat="server" LinkEditID="CBPicklist_9"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 10 To what extent does the organization use technology/automation to provide a -->
<tr id="r-m-10" > 
    <td >
        <uc:CBQuestion ID="CBquestion_10"   LinkEditID="CBPicklist_10" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_10" QuestionNumber="10"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_10" runat="server" LinkEditID="CBPicklist_10"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 11 Provide any additional information on the effectiveness (positive or negati -->
<tr id="r-m-11" > 
    <td >
        <uc:CBQuestion ID="CBquestion_11"   LinkEditID="CBPicklist_11" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_11" QuestionNumber="11"  PickListID="85" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_11" runat="server" LinkEditID="CBPicklist_11"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

            <tr>
                <td class="ButtonDiv" colspan="6" style="text-align: left">
                    <uc:CBButtPanel ID="CBButtPanel1" runat="server" />
                </td>
            </tr> 
        </table>
    </asp:Panel>
</asp:Content>

﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated. 
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Partial Public Class _2023_A_IG_1A

    '''<summary>
    '''Panel2 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents Panel1 As Global.System.Web.UI.WebControls.Panel

    '''<summary>
    '''CBlabelGroup control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabelGroup As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblError control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblError As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBlabel2 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel2 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel3 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel3 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo1 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist2 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist2 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks1 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel4 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel4 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel5 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel5 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo2 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo2 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist3 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist3 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks2 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks2 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel6 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel6 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel7 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel7 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo3 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo3 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist4 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist4 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks3 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks3 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel8 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel8 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel9 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel9 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo4 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo4 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist5 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist5 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks4 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks4 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel10 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel10 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel11 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel11 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo5 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo5 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist6 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist6 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks5 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks5 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel12 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel12 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel13 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel13 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo6 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo6 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist7 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist7 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks6 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks6 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel14 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel14 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel15 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel15 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo7 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo7 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist8 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist8 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks7 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks7 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel16 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel16 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel17 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel17 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''lblInfo8 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblInfo8 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist9 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist9 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks8 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks8 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel1 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel18 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel18 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''Label1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents Label1 As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''CBPicklist1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBPicklist1 As Global.CyberScope.CustomControls_CBpicklist2

    '''<summary>
    '''CBoptionalLinks9 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks9 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBlabel29 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel29 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBlabel30 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBlabel30 As Global.CyberScope.CustomControls_CBlabel

    '''<summary>
    '''CBtext1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBtext1 As Global.CyberScope.CustomControls_CBtext2

    '''<summary>
    '''CBoptionalLinks15 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBoptionalLinks15 As Global.CyberScope.CustomControls_CBoptionalLinks

    '''<summary>
    '''CBButtPanel1 control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents CBButtPanel1 As Global.CyberScope.CustomControls_CBButtPanel2
End Class
﻿
Imports CyberBalance.VB.Core
Imports CyberBalance.VB.Web.UI
Public Class _2023_A_IG_1A
    Inherits FismaFormBasePage2
    ReadOnly _odb As New DataBaseUtils2
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreRender
        If Not IsEditMode Then
            lblError.Visible = False
        End If 
        If Not Session("LinkFieldCode") Is Nothing Then
            lblError.Text = ValidationResults(Nothing, CBlabelGroup.PK_key.ToString())
            Session("LinkFieldCode") = Nothing
        End If
    End Sub
    Protected Overrides Function FormValid(Optional ByVal bApprovalSubmit As Boolean = False) As Boolean 
        lblError.Text = ValidationResults(Panel1.Controls, CBlabelGroup.PK_key.ToString())
        Session("LinkFieldCode") = Nothing 
        Return True
    End Function

End Class