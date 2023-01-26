
<!-- {idt}  {QuestionText} -->
<tr id="r-m-{idt}"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_{idt}_i"  LinkEditID="CBPicklist_{idt}" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_{idt}_ii" LinkEditID="CBPicklist_{idt}" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn">
        <uc:CBPickList2 ID="CBPicklist_{idt}"  PK_Question="{PK_Question}" PickListID="{PK_PickListType}" AllowNA="true" runat="server" CSSClass="CustomControlValue"  EditState='ReadMode' AutoPostback="true" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBPicklist_{idt}"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
