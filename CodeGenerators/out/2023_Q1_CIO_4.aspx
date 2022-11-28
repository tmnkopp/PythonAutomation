<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Form.Master" CodeBehind="2023_Q1_CIO_4.aspx.vb" Inherits="CyberScope._2023_Q1_CIO_4" %>
<%@ Register Src="../../CustomControls/CBlabel.ascx" TagName="CBlabel" TagPrefix="uc" %>
<%@ Register Src="../../CustomControls/CBPercentage.ascx" TagName="CBPercentage" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBDecimal.ascx" TagName="CBDecimal" TagPrefix="uc"  %>
<%@ Register Src="../../CustomControls/CBoptionalLinks.ascx" TagName="CBoptionalLinks" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBnumeric2.ascx" TagName="CBnumeric2" TagPrefix="uc"   %>
<%@ Register Src="../../CustomControls/CBButtPanel2.ascx" TagName="CBButtPanel" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBPickList2.ascx" TagName="CBPickList2" TagPrefix="uc" %>
<%@ Register Src="~/CustomControls/CBFrequency.ascx" TagPrefix="uc" TagName="CBFrequency" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        formatRows();
    });
    function formatRows() {
        $('tr[id^="r-m-"] td').css({ 'width': '1%' });
        $('tr[id^="r-m-"] td.Question').css({ 'width': '99%' });
        $('tr[id^="r-m-"]').each((index, element) => {
            if (RegExp(/[a-z]$/).test($(element).prop('id'))) {
                $('<td class="LabelColumn"></td>').insertBefore($(element).find("td:first-child"));
            };
            if ($(element).find('td').length < 3) {
                $(element).find('.LabelColumn').attr('colspan', 6);
            };
        });
    }
</script>
    <asp:Panel ID="Panel1" runat="server">
            <table class="table table-sm">
                <tr>
                    <td class="SectionHead" colspan="6">
                        <uc:CBlabel ID="CBlabelGroup" runat="server" LabelType="Group" PK_key="4017" />
                    </td>
                </tr>
                <tr>
                    <td class="LabelColumn text-left" colspan="6">
                        <asp:Label runat="server" ID="lblError" Visible="false" CssClass="text-left" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
<!--questions-->
<!-- 7_1 Please answer the following questions related to the requirements from the initial phase of OMB Memorandum M-21-30, Protecting Critical Software Through Enhanced Security Measures. Agencies shall consult CISA’s list of categories of Critical Software for additional guidance.-->
<tr id="r-m-7_1">
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_7_1" PK_key="36091" CSSClass="CustomControlHeader" runat="server" LabelType="Question"  />
    </td>
</tr>
<!-- 4_1 Number of instances of on-premise critical software, defined in NIST's Definition of Critical Software under Executive Order (EO) 14028, at the agency. -->
<tr id="r-m-4_1">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1" runat="server" CSSClass="CustomControlValue" PK_Question="36092" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1" runat="server" LinkEditID="CBNumeric_4_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_1 SM 1.1: Use multi-factor authentication that is verifier impersonation-resistant for all users and administrators-->
<tr id="r-m-4_1_1">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_1" runat="server" LabelType="QuestionNumber" PK_key="36093" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_1_i" runat="server" LabelType="Question" PK_key="36093" />
    </td>
</tr>
<!-- 4_1_1_a Critical software incorporating security measure -->
<tr id="r-m-4_1_1_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_1_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_1_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_1_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_1_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_1_a" runat="server" CSSClass="CustomControlValue" PK_Question="36094" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_1_a" runat="server" LinkEditID="CBNumeric_4_1_1_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_1_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_1_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_1_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_1_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_1_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_1_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_1_b" runat="server" CSSClass="CustomControlValue" PK_Question="36095" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_1_b" runat="server" LinkEditID="CBNumeric_4_1_1_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_1_c Critical software where security measure is not applicable -->
<tr id="r-m-4_1_1_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_1_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_1_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_1_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_1_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_1_c" runat="server" CSSClass="CustomControlValue" PK_Question="36096" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_1_c" runat="server" LinkEditID="CBNumeric_4_1_1_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_2 SM 2.2: Use fine-grained access control for data and resources-->
<tr id="r-m-4_1_2">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_2" runat="server" LabelType="QuestionNumber" PK_key="36097" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_2_i" runat="server" LabelType="Question" PK_key="36097" />
    </td>
</tr>
<!-- 4_1_2_a Critical software incorporating security measure -->
<tr id="r-m-4_1_2_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_2_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_2_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_2_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_2_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_2_a" runat="server" CSSClass="CustomControlValue" PK_Question="36098" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_2_a" runat="server" LinkEditID="CBNumeric_4_1_2_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_2_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_2_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_2_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_2_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_2_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_2_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_2_b" runat="server" CSSClass="CustomControlValue" PK_Question="36099" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_2_b" runat="server" LinkEditID="CBNumeric_4_1_2_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_2_c Critical software where security measure is not applicable -->
<tr id="r-m-4_1_2_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_2_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_2_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_2_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_2_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_2_c" runat="server" CSSClass="CustomControlValue" PK_Question="36100" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_2_c" runat="server" LinkEditID="CBNumeric_4_1_2_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_3 SM 2.3: Protect data at rest by encrypting sensitive data-->
<tr id="r-m-4_1_3">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_3" runat="server" LabelType="QuestionNumber" PK_key="36101" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_3_i" runat="server" LabelType="Question" PK_key="36101" />
    </td>
</tr>
<!-- 4_1_3_a Critical software incorporating security measure -->
<tr id="r-m-4_1_3_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_3_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_3_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_3_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_3_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_3_a" runat="server" CSSClass="CustomControlValue" PK_Question="36102" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_3_a" runat="server" LinkEditID="CBNumeric_4_1_3_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_3_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_3_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_3_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_3_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_3_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_3_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_3_b" runat="server" CSSClass="CustomControlValue" PK_Question="36103" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_3_b" runat="server" LinkEditID="CBNumeric_4_1_3_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_3_c Critical software where security measure is not applicable -->
<tr id="r-m-4_1_3_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_3_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_3_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_3_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_3_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_3_c" runat="server" CSSClass="CustomControlValue" PK_Question="36104" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_3_c" runat="server" LinkEditID="CBNumeric_4_1_3_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_4 SM 2.4: Protect data in transit by using mutual authentication whenever feasible and by encrypting sensitive data communications-->
<tr id="r-m-4_1_4">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_4" runat="server" LabelType="QuestionNumber" PK_key="36105" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_4_i" runat="server" LabelType="Question" PK_key="36105" />
    </td>
</tr>
<!-- 4_1_4_a Critical software incorporating security measure -->
<tr id="r-m-4_1_4_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_4_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_4_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_4_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_4_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_4_a" runat="server" CSSClass="CustomControlValue" PK_Question="36106" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_4_a" runat="server" LinkEditID="CBNumeric_4_1_4_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_4_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_4_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_4_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_4_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_4_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_4_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_4_b" runat="server" CSSClass="CustomControlValue" PK_Question="36107" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_4_b" runat="server" LinkEditID="CBNumeric_4_1_4_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_4_c Critical software where security measure is not applicable -->
<tr id="r-m-4_1_4_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_4_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_4_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_4_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_4_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_4_c" runat="server" CSSClass="CustomControlValue" PK_Question="36108" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_4_c" runat="server" LinkEditID="CBNumeric_4_1_4_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_5 SM 2.5: Back up data, exercise backup restoration, and be prepared to recover data-->
<tr id="r-m-4_1_5">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_5" runat="server" LabelType="QuestionNumber" PK_key="36109" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_5_i" runat="server" LabelType="Question" PK_key="36109" />
    </td>
</tr>
<!-- 4_1_5_a Critical software incorporating security measure -->
<tr id="r-m-4_1_5_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_5_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_5_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_5_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_5_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_5_a" runat="server" CSSClass="CustomControlValue" PK_Question="36110" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_5_a" runat="server" LinkEditID="CBNumeric_4_1_5_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_5_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_5_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_5_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_5_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_5_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_5_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_5_b" runat="server" CSSClass="CustomControlValue" PK_Question="36111" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_5_b" runat="server" LinkEditID="CBNumeric_4_1_5_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_5_c Critical software where security measure is not applicable -->
<tr id="r-m-4_1_5_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_5_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_5_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_5_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_5_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_5_c" runat="server" CSSClass="CustomControlValue" PK_Question="36112" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_5_c" runat="server" LinkEditID="CBNumeric_4_1_5_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_6 SM 3.2: Use patch management practices to maintain EO-critical software platforms and all software deployed to those platforms-->
<tr id="r-m-4_1_6">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_6" runat="server" LabelType="QuestionNumber" PK_key="36113" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_6_i" runat="server" LabelType="Question" PK_key="36113" />
    </td>
</tr>
<!-- 4_1_6_a Critical software incorporating security measure -->
<tr id="r-m-4_1_6_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_6_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_6_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_6_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_6_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_6_a" runat="server" CSSClass="CustomControlValue" PK_Question="36114" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_6_a" runat="server" LinkEditID="CBNumeric_4_1_6_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_6_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_6_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_6_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_6_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_6_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_6_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_6_b" runat="server" CSSClass="CustomControlValue" PK_Question="36115" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_6_b" runat="server" LinkEditID="CBNumeric_4_1_6_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_7 SM 3.2: Use patch management practices to maintain EO-critical software platforms and all software deployed to those platforms-->
<tr id="r-m-4_1_7">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_7" runat="server" LabelType="QuestionNumber" PK_key="36116" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_7_i" runat="server" LabelType="Question" PK_key="36116" />
    </td>
</tr>
<!-- 4_1_7_a Critical software incorporating security measure -->
<tr id="r-m-4_1_7_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_7_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_7_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_7_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_7_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_7_a" runat="server" CSSClass="CustomControlValue" PK_Question="36117" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_7_a" runat="server" LinkEditID="CBNumeric_4_1_7_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_7_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_7_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_7_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_7_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_7_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_7_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_7_b" runat="server" CSSClass="CustomControlValue" PK_Question="36118" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_7_b" runat="server" LinkEditID="CBNumeric_4_1_7_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_7_c Critical software where security measure is not applicable  -->
<tr id="r-m-4_1_7_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_7_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_7_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_7_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_7_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_7_c" runat="server" CSSClass="CustomControlValue" PK_Question="36119" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_7_c" runat="server" LinkEditID="CBNumeric_4_1_7_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_8 SM 4.1: Configure logging to record the necessary information about security events involving EO-critical software and all software running on those platforms-->
<tr id="r-m-4_1_8">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_4_1_8" runat="server" LabelType="QuestionNumber" PK_key="36120" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_4_1_8_i" runat="server" LabelType="Question" PK_key="36120" />
    </td>
</tr>
<!-- 4_1_8_a Critical software incorporating security measure -->
<tr id="r-m-4_1_8_a">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_8_a" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_8_a" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_8_a_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_8_a" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_8_a" runat="server" CSSClass="CustomControlValue" PK_Question="36121" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_8_a" runat="server" LinkEditID="CBNumeric_4_1_8_a" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_8_b Critical software for which risk of not incorporating the security measure has been accepted -->
<tr id="r-m-4_1_8_b">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_8_b" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_8_b" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_8_b_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_8_b" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_8_b" runat="server" CSSClass="CustomControlValue" PK_Question="36122" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_8_b" runat="server" LinkEditID="CBNumeric_4_1_8_b" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 4_1_8_c Critical software where security measure is not applicable -->
<tr id="r-m-4_1_8_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_8_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_8_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_8_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_8_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_8_c" runat="server" CSSClass="CustomControlValue" PK_Question="36123" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_8_c" runat="server" LinkEditID="CBNumeric_4_1_8_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 7_36 [6] - Each distinctly maintained and managed deployment of a certain configuration, package, release, and/or patch level of a software is a separate instance. Specific user instantiation (e.g., software installed on a user's laptop) shouldn't be counted; rather, the version installed would be one instance of the software license. For example, if the agency has both Tableau 10.2.1 legacy and Tableau 11.2, then that is two separate instances, but if a laptop has a copy of Tableau 9.1, that copy does not count as a separate instance.-->
<tr id="r-m-7_36">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_7_36" runat="server" LabelType="QuestionNumber" PK_key="36124" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_7_36_i" runat="server" LabelType="Question" PK_key="36124" />
    </td>
</tr>
<!-- 7_37 [7] - See list here for ease of reference: https://www.nist.gov/itl/executive-order-improving-nations-cybersecurity/security-measures-eo-critical-software-use-->
<tr id="r-m-7_37">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_7_37" runat="server" LabelType="QuestionNumber" PK_key="36125" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_7_37_i" runat="server" LabelType="Question" PK_key="36125" />
    </td>
</tr>
<!-- 4_1_6_c Critical software where security measure is not applicable  -->
<tr id="r-m-4_1_6_c">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_4_1_6_c" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_6_c" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_4_1_6_c_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_4_1_6_c" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_4_1_6_c" runat="server" CSSClass="CustomControlValue" PK_Question="36126" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_4_1_6_c" runat="server" LinkEditID="CBNumeric_4_1_6_c" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 7_3 Fill out the table below for each of the following security measures outlined in the Security Measures for EO-Critical Software Use, indicating the number of instances of on-premises critical software (from 4.1) for which the security measure is incorporated, the risk of not incorporating the security measure has been accepted, or the security measure is not applicable.-->
<tr id="r-m-7_3">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_7_3" runat="server" LabelType="QuestionNumber" PK_key="36127" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_7_3_i" runat="server" LabelType="Question" PK_key="36127" />
    </td>
</tr>

<!--/questions-->
                <tr>
                    <td class="ButtonDiv" colspan="6" style="text-align: left">
                        <uc:CBButtPanel ID="CBButtPanel1" runat="server" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>







