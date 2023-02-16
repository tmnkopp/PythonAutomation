
<!-- EP14  Are agency controlled/owned laptops allowed to directly connect to the HVA network (e.g., without using remote access mechanisms)? -->
<tr id="r-m-EP14">
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP14_i" LinkEditID="CbPickListMultiSelect_EP14" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP14_ii" LinkEditID="CbPickListMultiSelect_EP14"  runat="server" LabelType="Question" CSSClass="CustomControlLabelNoVertAlign"/> 
        <asp:Label ID="Label_EP14_i" runat="server" Text="" CssClass="CustomControlLabelNoVertAlign"></asp:Label>
    </td>
    <td class="ControlColumn">
        <uc:CbPickListMultiSelect ID="CbPickListMultiSelect_EP14" PK_Question="46660" PK_PickListType="423" runat="server" CSSClass="CustomControlValue" 
            EditState="EditMode" SelfLoadingOption="PicklistByPK"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP14" LinkEditID="CbPickListMultiSelect_EP14" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20"  runat="server" />
    </td>
 </tr>
 
<!-- EP14a  If Yes to EP14: Is full-disk encryption required for laptops? -->
<tr id="r-m-EP14a"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP14a_i"  LinkEditID="CBPicklist_EP14a" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP14a_ii" LinkEditID="CBPicklist_EP14a" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP14a"  PK_Question="46661" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP14a" runat="server" LinkEditID="CBPicklist_EP14a"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP14b  If Yes to EP14: Are these laptops subject to the same (or stricter) configuration constraints as permanent HVA endpoints? -->
<tr id="r-m-EP14b"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP14b_i"  LinkEditID="CBPicklist_EP14b" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP14b_ii" LinkEditID="CBPicklist_EP14b" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP14b"  PK_Question="46662" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP14b" runat="server" LinkEditID="CBPicklist_EP14b"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP14c  If Yes to EP14: Are these laptops denied admission to the HVA network  until configuration compliance is verified? -->
<tr id="r-m-EP14c"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP14c_i"  LinkEditID="CBPicklist_EP14c" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP14c_ii" LinkEditID="CBPicklist_EP14c" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP14c"  PK_Question="46663" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP14c" runat="server" LinkEditID="CBPicklist_EP14c"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP15  Are agency controlled/owned mobile devices allowed to directly connect to the HVA network (e.g., without using remote access mechanisms)? -->
<tr id="r-m-EP15"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP15_i"  LinkEditID="CBPicklist_EP15" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP15_ii" LinkEditID="CBPicklist_EP15" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP15"  PK_Question="46664" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP15" runat="server" LinkEditID="CBPicklist_EP15"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP15a  If Yes to EP15: Are these mobile devices encrypted? -->
<tr id="r-m-EP15a"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP15a_i"  LinkEditID="CBPicklist_EP15a" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP15a_ii" LinkEditID="CBPicklist_EP15a" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP15a"  PK_Question="46665" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP15a" runat="server" LinkEditID="CBPicklist_EP15a"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP15b  If Yes to EP15: Is the configuration of these mobile devices controlled using a mobile device management solution? -->
<tr id="r-m-EP15b"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP15b_i"  LinkEditID="CBPicklist_EP15b" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP15b_ii" LinkEditID="CBPicklist_EP15b" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP15b"  PK_Question="46666" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP15b" runat="server" LinkEditID="CBPicklist_EP15b"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP15c  If Yes to EP15: Are these mobile devices denied admission to the HVA network until configuration compliance is verified? -->
<tr id="r-m-EP15c"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP15c_i"  LinkEditID="CBPicklist_EP15c" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP15c_ii" LinkEditID="CBPicklist_EP15c" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP15c"  PK_Question="46667" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP15c" runat="server" LinkEditID="CBPicklist_EP15c"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP16  Are portable endpoints not controlled/owned by the agency allowed to directly connect to the HVA network? -->
<tr id="r-m-EP16"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP16_i"  LinkEditID="CBPicklist_EP16" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP16_ii" LinkEditID="CBPicklist_EP16" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP16"  PK_Question="46668" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP16" runat="server" LinkEditID="CBPicklist_EP16"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- EP16a  If Yes to EP16: Are these portable devices subject to the same (or stricter) configuration requirements as agency controlled/owned portable devices? -->
<tr id="r-m-EP16a"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_EP16a_i"  LinkEditID="CBPicklist_EP16a" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_EP16a_ii" LinkEditID="CBPicklist_EP16a" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_EP16a"  PK_Question="46669" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_EP16a" runat="server" LinkEditID="CBPicklist_EP16a"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
