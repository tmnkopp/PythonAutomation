<!-- {idt} {QuestionText} -->
<tr id="r-m-{idt}" {Dependancy}>
    <td >
        <uc:CBQuestion ID="CBquestion_{idt}"   LinkEditID="CBNumeric_{idt}" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_{idt}" QuestionNumber="{idt}" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBNumeric_{idt}" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
