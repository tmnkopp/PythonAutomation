<!-- {idt} {QT_ABBR} -->
<tr id="r-m-{idt}">
    <td >
        <uc:CBQuestion ID="CBquestion_{idt}"   LinkEditID="CBPercentage_{idt}" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBPercentage ID="CBPercentage_{idt}" QuestionNumber="{idt}"  runat="server" CSSClass="CustomControlValue"  AllowDefer="false" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBPercentage_{idt}" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
