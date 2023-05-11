<!-- S1022 -->
<tr id="r-m-S1022">
    <td class="LabelNoWrap" >
        <uc:CBlabel QuestionNumber="S1022"  ID="CBlabel_S1022" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel QuestionNumber="S1022"  ID="CBlabel_S1022_i" runat="server" LabelType="Question" CSSClass="CustomControlHeader"   />
    </td>
</tr>
<!-- S108 For questions 10.4 through 10.7, please respond utilizing days, hours, minutes. If not mature enough to measure, click N/A. Please provide the following answers for the previous 12 months prior to reporting (including incidents from the previous Fiscal Year, where applicable).-->
<tr id="r-m-S108">
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_S108" PK_key="50428" CSSClass="CustomControlHeader" runat="server" LabelType="Question"  />
    </td>
</tr>
<!-- 10_1 Please fill in the following table regarding contingency plan activities. Number of systems (from 1.1) that have been covered by an annual test of that plan.-->
<tr id="r-m-10_1">
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_10_1" PK_key="50421" CSSClass="CustomControlHeader" runat="server" LabelType="Question"  />
    </td>
</tr>
<!-- 10_1_1 Incident response plan -->
<tr id="r-m-10_1_1" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_1_1"   LinkEditID="CBNumeric_10_1_1" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_1_1" QuestionNumber="10_1_1" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_1_1" runat="server" LinkEditID="CBNumeric_10_1_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_1_2 Disaster recovery plan -->
<tr id="r-m-10_1_2" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_1_2"   LinkEditID="CBNumeric_10_1_2" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_1_2" QuestionNumber="10_1_2" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_1_2" runat="server" LinkEditID="CBNumeric_10_1_2" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_2 Does the agency have an Enterprise-wide Department or Agency Office of the CIO Business Continuity Plan (either stand-alone or as part of your incident response or disaster recovery plans)? -->
<tr id="r-m-10_2" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_2"   LinkEditID="CBYesNo2_10_2" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_10_2" runat="server" QuestionNumber="10_2"  TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_2" LinkEditID="CBYesNo2_10_2" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
<!-- 10_3 Number of HVA systems (from 1.1.5) for which an Information System Contingency Plan (ISCP) has been developed to guide the process for assessment and recovery of the system following a disruption (NIST SP 800-53r5 CP-2(1), NIST SP 800-34) -->
<tr id="r-m-10_3" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_3"   LinkEditID="CBNumeric_10_3" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_3" QuestionNumber="10_3" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_3" runat="server" LinkEditID="CBNumeric_10_3" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_3_1 Number of HVA systems (from 1.1.5) that have an alternate processing site identified and provisioned, operate multiple redundant sites for resiliency, or can be provisioned within the organization-defined time period for resumption (NIST SP 800-53r5 CP-7(4)) -->
<tr id="r-m-10_3_1" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_3_1"   LinkEditID="CBNumeric_10_3_1" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_3_1" QuestionNumber="10_3_1" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_3_1" runat="server" LinkEditID="CBNumeric_10_3_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_3_2 Number of HVA systems (from 10.3.1) for which alternate processing site or redundant sites have been tested in the past year -->
<tr id="r-m-10_3_2" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_3_2"   LinkEditID="CBNumeric_10_3_2" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_3_2" QuestionNumber="10_3_2" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_3_2" runat="server" LinkEditID="CBNumeric_10_3_2" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_4 Mean Time To Detect [39] -->
<tr id="r-m-10_4" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_4" LinkEditID="CBFrequency_10_4" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBFrequency ID="CBFrequency_10_4" QuestionNumber="10_4" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_4" runat="server" LinkEditID="CBFrequency_10_4" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_5 Mean Time To Identify [40] -->
<tr id="r-m-10_5" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_5" LinkEditID="CBFrequency_10_5" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBFrequency ID="CBFrequency_10_5" QuestionNumber="10_5" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_5" runat="server" LinkEditID="CBFrequency_10_5" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_6 Mean Time To Recover [41] -->
<tr id="r-m-10_6" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_6" LinkEditID="CBFrequency_10_6" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBFrequency ID="CBFrequency_10_6" QuestionNumber="10_6" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_6" runat="server" LinkEditID="CBFrequency_10_6" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_7 Mean Time To Resolve [42] -->
<tr id="r-m-10_7" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_7" LinkEditID="CBFrequency_10_7" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBFrequency ID="CBFrequency_10_7" QuestionNumber="10_7" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_7" runat="server" LinkEditID="CBFrequency_10_7" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_8-->
<tr id="r-m-10_8">
    <td class="LabelNoWrap" >
        <uc:CBlabel QuestionNumber="10_8" ID="CBlabel_10_8" CSSClass="CustomControlLabelNoVertAlign" runat="server" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel  QuestionNumber="10_8" ID="CBlabel_10_8_i" CSSClass="CustomControlHeader" runat="server" LabelType="Question"  />
    </td>
</tr>
<!-- 10_8_1-->
<tr id="r-m-10_8_1">
    <td class="LabelNoWrap" >
        <uc:CBlabel QuestionNumber="10_8_1" ID="CBlabel_10_8_1" CSSClass="CustomControlLabelNoVertAlign" runat="server" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel  QuestionNumber="10_8_1" ID="CBlabel_10_8_1_i" CSSClass="CustomControlHeader" runat="server" LabelType="Question"  />
    </td>
</tr>
<!-- 10_8_1_1 At least one EDR platform in the Agency -->
<tr id="r-m-10_8_1_1" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_8_1_1"   LinkEditID="CBNumeric_10_8_1_1" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_8_1_1" QuestionNumber="10_8_1_1" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_8_1_1" runat="server" LinkEditID="CBNumeric_10_8_1_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_8_1_2 A mobile threat defense  (MTD) or other EDR-equivalent solution for non-conforming devices -->
<tr id="r-m-10_8_1_2" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_8_1_2"   LinkEditID="CBNumeric_10_8_1_2" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_8_1_2" QuestionNumber="10_8_1_2" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_8_1_2" runat="server" LinkEditID="CBNumeric_10_8_1_2" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_8_1_3 The enterprise EDR platform identified by the agency in question 10.8.2 (if no enterprise EDR platform is selected, this is 0) -->
<tr id="r-m-10_8_1_3" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_8_1_3"   LinkEditID="CBNumeric_10_8_1_3" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_8_1_3" QuestionNumber="10_8_1_3" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_8_1_3" runat="server" LinkEditID="CBNumeric_10_8_1_3" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 10_8_2 Has your agency selected an enterprise endpoint detection and response (EDR) platform for the agency/department to implement as outlined in OMB Memorandum 22-01? -->
<tr id="r-m-10_8_2" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_8_2"   LinkEditID="CBYesNo2_10_8_2" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_10_8_2" runat="server" QuestionNumber="10_8_2"  TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_8_2" LinkEditID="CBYesNo2_10_8_2" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
<!-- 10_8_2_1 Please provide the number of EDR platforms deployed across the agency. -->
<tr id="r-m-10_8_2_1" None>
    <td >
        <uc:CBQuestion ID="CBquestion_10_8_2_1"   LinkEditID="CBNumeric_10_8_2_1" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_10_8_2_1" QuestionNumber="10_8_2_1" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_8_2_1" runat="server" LinkEditID="CBNumeric_10_8_2_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 10_8_3  Referring to CISA’s EDR Maturity Model (required by M-22-01), please select an operational level of maturity (initial, advanced, optimal) for your agency’s utilization of EDR technology(ies) in your enterprise:  
	<br>
	Guidance:
	<br><br>
	<strong>Initial Maturity:</strong> Intermittent operational use, alerts are triaged manually, as well as on an ad-hoc basis.
	<br>
	<strong>Advanced Maturity:</strong> Moderate level of expertise depending on SOC. Tool tuning, scheduled sweeps, and conducting threat hunting activities. Some automation employed to triage events and alerts. False positives are significantly reduced.
	<br>
	<strong>Optimal Maturity:</strong> Highly tuned and integrated into daily SOC operations (security event/incident investigations) with well-practiced incident response playbooks (automated if possible), and comprehensive reporting. False positives are exceptionally rare and automation is heavily employed to minimize human interactions with the EDR solution to triage common alerts. Dynamic policies are employed to allow the EDR solution to go beyond static identification and detection of anomalous activity.
	 -->
<tr id="r-m-10_8_3" None> 
    <td >
        <uc:CBQuestion ID="CBquestion_10_8_3"   LinkEditID="CBPicklist_10_8_3" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_10_8_3" QuestionNumber="10_8_3"  PickListID="None" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_10_8_3" runat="server" LinkEditID="CBPicklist_10_8_3"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
