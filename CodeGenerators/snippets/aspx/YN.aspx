<!-- {idt} {QT_ABBR} -->
<tr id="r-m-{idt}" >
    <td >
        <uc:CBQuestion ID="CBquestion_{idt}"   LinkEditID="CBYesNo2_{idt}" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_{idt}" runat="server" QuestionNumber="{IdText}"  TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" LinkEditID="CBYesNo2_{idt}" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>

