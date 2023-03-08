<!-- 14 Is this HVA necessary to perform one or more Primary Mission Essential Function(s) (PMEF)? -->
<tr id="r-m-14" >
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_14" LinkEditID="CBYesNo2_14" runat="server" CSSClass="CustomControlLabel" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_14_i" LinkEditID="CBYesNo2_14" runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_14" runat="server" PK_Question="28721" TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_14" LinkEditID="CBYesNo2_14" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
<!-- 14_1 If Yes, how many Primary Mission Essential Functions (PMEF) does this HVA support? -->
<tr id="r-m-14_1" None>
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_14_1" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_14_1" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_14_1_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_14_1" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_14_1" runat="server" CSSClass="CustomControlValue" PK_Question="28722" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_14_1" runat="server" LinkEditID="CBNumeric_14_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 14_2  If Yes, Please select the PMEFS for this HVA. -->
<tr id="r-m-14_2" None>
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_14_2_i" LinkEditID="CbPickListMultiSelect_14_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_14_2_ii" LinkEditID="CbPickListMultiSelect_14_2"  runat="server" LabelType="Question" CSSClass="CustomControlLabelNoVertAlign"/> 
        <asp:Label ID="Label_14_2_i" runat="server" Text="" CssClass="CustomControlLabelNoVertAlign"></asp:Label>
    </td>
    <td class="ControlColumn">
        <uc:CbPickListMultiSelect ID="CbPickListMultiSelect_14_2" PK_Question="28723" PK_PickListType="360" runat="server" CSSClass="CustomControlValue" 
            EditState="EditMode" SelfLoadingOption="PicklistByPK"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_14_2" LinkEditID="CbPickListMultiSelect_14_2" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20"  runat="server" />
    </td>
 </tr>
 <!-- 14_2_1 If Other, please describe. -->
<tr id="r-m-14_2_1"   data-question_master="r-m-14_2"  data-value_torequire="Other" > 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_14_2_1_i"  LinkEditID="CBtext_14_2_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_14_2_1_ii" LinkEditID="CBtext_14_2_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_14_2_1"  PK_Question="28720"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_14_2_1" runat="server" LinkEditID="CBtext_14_2_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 15 Is this HVA necessary to perform one or more Mission Essential Function(s) (MEF)? -->
<tr id="r-m-15" >
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_15" LinkEditID="CBYesNo2_15" runat="server" CSSClass="CustomControlLabel" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_15_i" LinkEditID="CBYesNo2_15" runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_15" runat="server" PK_Question="28724" TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_15" LinkEditID="CBYesNo2_15" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
<!-- 15_1 If Yes, how many Mission Essential Functions (MEF) does this HVA perform?  -->
<tr id="r-m-15_1" None>
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_15_1" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_15_1" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_15_1_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_15_1" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_15_1" runat="server" CSSClass="CustomControlValue" PK_Question="28725" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_15_1" runat="server" LinkEditID="CBNumeric_15_1" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 16  If this HVA supports one or more PMEFS or MEFS, then If the HVA is unavailable for more than 12 hours, what is the impact to the PMEF or MEF it supports? -->
<tr id="r-m-16" > 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_16_i"  LinkEditID="CBPicklist_16" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_16_ii" LinkEditID="CBPicklist_16" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_16"  PK_Question="28726" PickListID="364" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_16" runat="server" LinkEditID="CBPicklist_16"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 16_1  If Degraded (4) or Failure (5), are there any non-mission impacts associated with this system's unavailability after 12 hours? -->
<tr id="r-m-16_1"   data-question_master="r-m-16"  data-value_torequire="4) Degraded" > 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_16_1_i"  LinkEditID="CBPicklist_16_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_16_1_ii" LinkEditID="CBPicklist_16_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_16_1"  PK_Question="28727" PickListID="365" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_16_1" runat="server" LinkEditID="CBPicklist_16_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 16_1  If Degraded (4) or Failure (5), are there any non-mission impacts associated with this system's unavailability after 12 hours? -->
<tr id="r-m-16_1"   data-question_master="r-m-16"  data-value_torequire="5) Failure" > 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_16_1_i"  LinkEditID="CBPicklist_16_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_16_1_ii" LinkEditID="CBPicklist_16_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_16_1"  PK_Question="28727" PickListID="365" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_16_1" runat="server" LinkEditID="CBPicklist_16_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 16_1_1 If "Other" non-mission impact, please describe. -->
<tr id="r-m-16_1_1"   data-question_master="r-m-16_1"  data-value_torequire="Other" > 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_16_1_1_i"  LinkEditID="CBtext_16_1_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_16_1_1_ii" LinkEditID="CBtext_16_1_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_16_1_1"  PK_Question="28728"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_16_1_1" runat="server" LinkEditID="CBtext_16_1_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 17 Could a failure, corruption or degradation of the HVA have a direct impact on regional or national health, public safety and welfare of the United States? -->
<tr id="r-m-17" >
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_17" LinkEditID="CBYesNo2_17" runat="server" CSSClass="CustomControlLabel" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_17_i" LinkEditID="CBYesNo2_17" runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_17" runat="server" PK_Question="28729" TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_17" LinkEditID="CBYesNo2_17" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
<!-- 18 Does the HVA store, receive, send, use, create, or otherwise process any of the following sensitive data types? -->
<tr id="r-m-18" >
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_18" LinkEditID="CBYesNo2_18" runat="server" CSSClass="CustomControlLabel" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_i" LinkEditID="CBYesNo2_18" runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_18" runat="server" PK_Question="28730" TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_18" LinkEditID="CBYesNo2_18" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
<!-- 18_1 PII-->
<tr id="r-m-18_1">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_18_1" runat="server" LabelType="QuestionNumber" PK_key="28731" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_18_1_i" runat="server" LabelType="Question" PK_key="28731" />
    </td>
</tr>

<!-- 18_1_1  PII - Volume -->
<tr id="r-m-18_1_1" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_1_1_i"  LinkEditID="CBPicklist_18_1_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_1_1_ii" LinkEditID="CBPicklist_18_1_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_18_1_1"  PK_Question="28732" PickListID="162" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_1_1" runat="server" LinkEditID="CBPicklist_18_1_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_1_2 PII - Type -->
<tr id="r-m-18_1_2" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_1_2_i"  LinkEditID="CBtext_18_1_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_1_2_ii" LinkEditID="CBtext_18_1_2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_18_1_2"  PK_Question="28733"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_1_2" runat="server" LinkEditID="CBtext_18_1_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_2 PHI-->
<tr id="r-m-18_2">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_18_2" runat="server" LabelType="QuestionNumber" PK_key="28734" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_18_2_i" runat="server" LabelType="Question" PK_key="28734" />
    </td>
</tr>

<!-- 18_2_1  PHI - Volume -->
<tr id="r-m-18_2_1" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_2_1_i"  LinkEditID="CBPicklist_18_2_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_2_1_ii" LinkEditID="CBPicklist_18_2_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_18_2_1"  PK_Question="28735" PickListID="162" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_2_1" runat="server" LinkEditID="CBPicklist_18_2_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_2_2 PHI - Type -->
<tr id="r-m-18_2_2" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_2_2_i"  LinkEditID="CBtext_18_2_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_2_2_ii" LinkEditID="CBtext_18_2_2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_18_2_2"  PK_Question="28736"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_2_2" runat="server" LinkEditID="CBtext_18_2_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_3 Law Enforcement-->
<tr id="r-m-18_3">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_18_3" runat="server" LabelType="QuestionNumber" PK_key="28737" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_18_3_i" runat="server" LabelType="Question" PK_key="28737" />
    </td>
</tr>

<!-- 18_3_1  Law Enforcement - Volume -->
<tr id="r-m-18_3_1" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_3_1_i"  LinkEditID="CBPicklist_18_3_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_3_1_ii" LinkEditID="CBPicklist_18_3_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_18_3_1"  PK_Question="28738" PickListID="162" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_3_1" runat="server" LinkEditID="CBPicklist_18_3_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_3_2 Law Enforcement - Type -->
<tr id="r-m-18_3_2" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_3_2_i"  LinkEditID="CBtext_18_3_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_3_2_ii" LinkEditID="CBtext_18_3_2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_18_3_2"  PK_Question="28739"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_3_2" runat="server" LinkEditID="CBtext_18_3_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_4 Pre-Release-->
<tr id="r-m-18_4">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_18_4" runat="server" LabelType="QuestionNumber" PK_key="28740" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_18_4_i" runat="server" LabelType="Question" PK_key="28740" />
    </td>
</tr>

<!-- 18_4_1  Pre-Release - Volume -->
<tr id="r-m-18_4_1" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_4_1_i"  LinkEditID="CBPicklist_18_4_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_4_1_ii" LinkEditID="CBPicklist_18_4_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_18_4_1"  PK_Question="28741" PickListID="162" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_4_1" runat="server" LinkEditID="CBPicklist_18_4_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_4_2 Pre-Release - Type -->
<tr id="r-m-18_4_2" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_4_2_i"  LinkEditID="CBtext_18_4_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_4_2_ii" LinkEditID="CBtext_18_4_2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_18_4_2"  PK_Question="28742"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_4_2" runat="server" LinkEditID="CBtext_18_4_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_5 IP-->
<tr id="r-m-18_5">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_18_5" runat="server" LabelType="QuestionNumber" PK_key="28743" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_18_5_i" runat="server" LabelType="Question" PK_key="28743" />
    </td>
</tr>

<!-- 18_5_1  IP - Volume -->
<tr id="r-m-18_5_1" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_5_1_i"  LinkEditID="CBPicklist_18_5_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_5_1_ii" LinkEditID="CBPicklist_18_5_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_18_5_1"  PK_Question="28744" PickListID="162" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_5_1" runat="server" LinkEditID="CBPicklist_18_5_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_5_2 IP - Type -->
<tr id="r-m-18_5_2" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_5_2_i"  LinkEditID="CBtext_18_5_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_5_2_ii" LinkEditID="CBtext_18_5_2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_18_5_2"  PK_Question="28745"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_5_2" runat="server" LinkEditID="CBtext_18_5_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_6 Other-->
<tr id="r-m-18_6">
    <td class="LabelNoWrap" >
        <uc:CBlabel CSSClass="CustomControlLabelNoVertAlign" ID="CBlabel_18_6" runat="server" LabelType="QuestionNumber" PK_key="28746" />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel CSSClass="CustomControlHeader" ID="CBlabel_18_6_i" runat="server" LabelType="Question" PK_key="28746" />
    </td>
</tr>

<!-- 18_6_1  Other - Volume -->
<tr id="r-m-18_6_1" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_6_1_i"  LinkEditID="CBPicklist_18_6_1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_6_1_ii" LinkEditID="CBPicklist_18_6_1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_18_6_1"  PK_Question="28747" PickListID="162" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_6_1" runat="server" LinkEditID="CBPicklist_18_6_1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
<!-- 18_6_2 Other - Type -->
<tr id="r-m-18_6_2" None> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_18_6_2_i"  LinkEditID="CBtext_18_6_2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_18_6_2_ii" LinkEditID="CBtext_18_6_2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_18_6_2"  PK_Question="28748"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_18_6_2" runat="server" LinkEditID="CBtext_18_6_2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- 19  Number of network endpoints, including servers and virtual servers, within HVA system boundary (production environment only) -->
<tr id="r-m-19" > 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_19_i"  LinkEditID="CBPicklist_19" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_19_ii" LinkEditID="CBPicklist_19" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_19"  PK_Question="28750" PickListID="None" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_19" runat="server" LinkEditID="CBPicklist_19"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
