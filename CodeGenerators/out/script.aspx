
<!-- RA8  Does the HVA allow connections to external systems (e.g., the HVA is used as a data source for external systems, the HVA accesses data stored in external systems)? -->
<tr id="r-m-RA8">
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8_i" LinkEditID="CbPickListMultiSelect_RA8" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8_ii" LinkEditID="CbPickListMultiSelect_RA8"  runat="server" LabelType="Question" CSSClass="CustomControlLabelNoVertAlign"/> 
        <asp:Label ID="Label_RA8_i" runat="server" Text="" CssClass="CustomControlLabelNoVertAlign"></asp:Label>
    </td>
    <td class="ControlColumn">
        <uc:CbPickListMultiSelect ID="CbPickListMultiSelect_RA8" PK_Question="46750" PK_PickListType="423" runat="server" CSSClass="CustomControlValue" 
            EditState="EditMode" SelfLoadingOption="PicklistByPK"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8" LinkEditID="CbPickListMultiSelect_RA8" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20"  runat="server" />
    </td>
 </tr>
 
<!-- RA8a  If Yes to RA8: Are these system-to-system connections required for the HVA to execute its mission? -->
<tr id="r-m-RA8a"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a_i"  LinkEditID="CBPicklist_RA8a" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a_ii" LinkEditID="CBPicklist_RA8a" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a"  PK_Question="46751" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a" runat="server" LinkEditID="CBPicklist_RA8a"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a1  If Yes to RA8a: Does the agency have agreements in place (e.g., MOA/MOU, ISA) with the external system owners? -->
<tr id="r-m-RA8a1"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a1_i"  LinkEditID="CBPicklist_RA8a1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a1_ii" LinkEditID="CBPicklist_RA8a1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a1"  PK_Question="46752" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a1" runat="server" LinkEditID="CBPicklist_RA8a1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a1a  If Yes to RA8a1: Are these agreements periodically reviewed and renewed at least annually? -->
<tr id="r-m-RA8a1a"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a1a_i"  LinkEditID="CBPicklist_RA8a1a" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a1a_ii" LinkEditID="CBPicklist_RA8a1a" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a1a"  PK_Question="46753" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a1a" runat="server" LinkEditID="CBPicklist_RA8a1a"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a1b  If Yes to RA8a1: Do these agreements address security roles and responsibilities? -->
<tr id="r-m-RA8a1b"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a1b_i"  LinkEditID="CBPicklist_RA8a1b" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a1b_ii" LinkEditID="CBPicklist_RA8a1b" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a1b"  PK_Question="46754" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a1b" runat="server" LinkEditID="CBPicklist_RA8a1b"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a1c  If Yes to RA8a1: Do these agreements address security and activity monitoring? -->
<tr id="r-m-RA8a1c"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a1c_i"  LinkEditID="CBPicklist_RA8a1c" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a1c_ii" LinkEditID="CBPicklist_RA8a1c" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a1c"  PK_Question="46755" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a1c" runat="server" LinkEditID="CBPicklist_RA8a1c"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a1d  If Yes to RA8a1: Do these agreements address security incident notification and response? -->
<tr id="r-m-RA8a1d"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a1d_i"  LinkEditID="CBPicklist_RA8a1d" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a1d_ii" LinkEditID="CBPicklist_RA8a1d" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a1d"  PK_Question="46756" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a1d" runat="server" LinkEditID="CBPicklist_RA8a1d"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a2  If Yes to RA8a: How are these connections established?  Select all that apply. -->
<tr id="r-m-RA8a2"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a2_i"  LinkEditID="CBPicklist_RA8a2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a2_ii" LinkEditID="CBPicklist_RA8a2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a2"  PK_Question="46757" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a2" runat="server" LinkEditID="CBPicklist_RA8a2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a3  If Yes to RA8a: Are these connections limited to specific external systems (e.g., by IP address or subnet)? -->
<tr id="r-m-RA8a3"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a3_i"  LinkEditID="CBPicklist_RA8a3" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a3_ii" LinkEditID="CBPicklist_RA8a3" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a3"  PK_Question="46758" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a3" runat="server" LinkEditID="CBPicklist_RA8a3"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a4  If Yes to RA8a: Are these connections encrypted? -->
<tr id="r-m-RA8a4"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a4_i"  LinkEditID="CBPicklist_RA8a4" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a4_ii" LinkEditID="CBPicklist_RA8a4" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a4"  PK_Question="46759" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a4" runat="server" LinkEditID="CBPicklist_RA8a4"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a5  If Yes to RA8a: Are these connections authenticated or are compensating controls in place (e.g., limiting source IP addresses, time-of-day restrictions)? -->
<tr id="r-m-RA8a5"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a5_i"  LinkEditID="CBPicklist_RA8a5" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a5_ii" LinkEditID="CBPicklist_RA8a5" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a5"  PK_Question="46760" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a5" runat="server" LinkEditID="CBPicklist_RA8a5"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a6  If Yes to RA8a: Are these connections logged and monitored? -->
<tr id="r-m-RA8a6"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a6_i"  LinkEditID="CBPicklist_RA8a6" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a6_ii" LinkEditID="CBPicklist_RA8a6" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a6"  PK_Question="46761" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a6" runat="server" LinkEditID="CBPicklist_RA8a6"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8a7  If Yes to RA8a: What types of activities are allowed by these connections?  Select all that apply. -->
<tr id="r-m-RA8a7"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8a7_i"  LinkEditID="CBPicklist_RA8a7" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8a7_ii" LinkEditID="CBPicklist_RA8a7" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8a7"  PK_Question="46762" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8a7" runat="server" LinkEditID="CBPicklist_RA8a7"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b  If Yes to RA8: Are these system-to-system connections required for others to execute their missions? -->
<tr id="r-m-RA8b"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b_i"  LinkEditID="CBPicklist_RA8b" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b_ii" LinkEditID="CBPicklist_RA8b" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b"  PK_Question="46763" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b" runat="server" LinkEditID="CBPicklist_RA8b"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b1  If Yes to RA8b: Does the agency have agreements in place (e.g., MOA/MOU, ISA) with the external system owners? -->
<tr id="r-m-RA8b1"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b1_i"  LinkEditID="CBPicklist_RA8b1" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b1_ii" LinkEditID="CBPicklist_RA8b1" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b1"  PK_Question="46764" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b1" runat="server" LinkEditID="CBPicklist_RA8b1"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b1a  If Yes to RA8b1: Are these agreements periodically reviewed and renewed at least annually? -->
<tr id="r-m-RA8b1a"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b1a_i"  LinkEditID="CBPicklist_RA8b1a" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b1a_ii" LinkEditID="CBPicklist_RA8b1a" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b1a"  PK_Question="46765" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b1a" runat="server" LinkEditID="CBPicklist_RA8b1a"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b1b  If Yes to RA8b1: Do these agreements address security roles and responsibilities? -->
<tr id="r-m-RA8b1b"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b1b_i"  LinkEditID="CBPicklist_RA8b1b" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b1b_ii" LinkEditID="CBPicklist_RA8b1b" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b1b"  PK_Question="46766" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b1b" runat="server" LinkEditID="CBPicklist_RA8b1b"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b1c  If Yes to RA8b1: Do these agreements address security and activity monitoring? -->
<tr id="r-m-RA8b1c"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b1c_i"  LinkEditID="CBPicklist_RA8b1c" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b1c_ii" LinkEditID="CBPicklist_RA8b1c" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b1c"  PK_Question="46767" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b1c" runat="server" LinkEditID="CBPicklist_RA8b1c"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b1d  If Yes to RA8b1: Do these agreements address security incident notification and response? -->
<tr id="r-m-RA8b1d"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b1d_i"  LinkEditID="CBPicklist_RA8b1d" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b1d_ii" LinkEditID="CBPicklist_RA8b1d" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b1d"  PK_Question="46768" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b1d" runat="server" LinkEditID="CBPicklist_RA8b1d"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b2  If Yes to RA8b: How are these connections established?  Select all that apply. -->
<tr id="r-m-RA8b2"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b2_i"  LinkEditID="CBPicklist_RA8b2" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b2_ii" LinkEditID="CBPicklist_RA8b2" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b2"  PK_Question="46769" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b2" runat="server" LinkEditID="CBPicklist_RA8b2"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b3  If Yes to RA8b: Are these connections limited to specific external systems (e.g., by IP address or subnet)? -->
<tr id="r-m-RA8b3"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b3_i"  LinkEditID="CBPicklist_RA8b3" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b3_ii" LinkEditID="CBPicklist_RA8b3" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b3"  PK_Question="46770" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b3" runat="server" LinkEditID="CBPicklist_RA8b3"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b4  If Yes to RA8b: Are these connections authenticated? -->
<tr id="r-m-RA8b4"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b4_i"  LinkEditID="CBPicklist_RA8b4" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b4_ii" LinkEditID="CBPicklist_RA8b4" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b4"  PK_Question="46771" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b4" runat="server" LinkEditID="CBPicklist_RA8b4"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b5  If Yes to RA8b: Are these connections encrypted? -->
<tr id="r-m-RA8b5"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b5_i"  LinkEditID="CBPicklist_RA8b5" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b5_ii" LinkEditID="CBPicklist_RA8b5" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b5"  PK_Question="46772" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b5" runat="server" LinkEditID="CBPicklist_RA8b5"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b6  If Yes to RA8b: Are these connections logged and monitored? -->
<tr id="r-m-RA8b6"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b6_i"  LinkEditID="CBPicklist_RA8b6" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b6_ii" LinkEditID="CBPicklist_RA8b6" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b6"  PK_Question="46773" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b6" runat="server" LinkEditID="CBPicklist_RA8b6"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

<!-- RA8b7  If Yes to RA8b: What types of activities are allowed by these connections?  Select all that apply. -->
<tr id="r-m-RA8b7"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_RA8b7_i"  LinkEditID="CBPicklist_RA8b7" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_RA8b7_ii" LinkEditID="CBPicklist_RA8b7" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_RA8b7"  PK_Question="46774" PickListID="423" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_RA8b7" runat="server" LinkEditID="CBPicklist_RA8b7"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
