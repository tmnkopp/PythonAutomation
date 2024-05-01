
<!-- {idt} {QT_ABBR} -->
<tr id="r-m-{idt}" >
    <td >
        <uc:CBQuestion ID="CBquestion_{idt}"   LinkEditID="CbPickListMultiSelect_{idt}" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CbPickListMultiSelect ID="CbPickListMultiSelect_{idt}" QuestionNumber="{IdText}"  PK_PickListType="{PK_PickListType}" runat="server" CSSClass="CustomControlValue" 
            EditState="EditMode" SelfLoadingOption="PicklistByPK"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" LinkEditID="CbPickListMultiSelect_{idt}" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20"  runat="server" />
    </td>
 </tr>
 
