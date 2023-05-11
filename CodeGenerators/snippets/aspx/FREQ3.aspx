<!-- {idt} {QuestionText} -->
<tr id="r-m-{idt}" {Dependancy}>
    <td >
        <uc:CBQuestion ID="CBquestion_{idt}" LinkEditID="CBFrequency_{idt}" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBFrequency ID="CBFrequency_{idt}" QuestionNumber="{idt}" runat="server" CSSClass="CustomControlValue"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBFrequency_{idt}" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
