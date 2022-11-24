<!-- {idt} {QuestionText} -->
<tr id="r-m-{idt}">
    <td class="LabelNoWrap">
        <uc:CBlabel ID="CBlabel_{idt}" LinkEditID="CBPercentage_{idt}" runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question">
        <uc:CBlabel ID="CBlabel_{idt}_i" LinkEditID="CBPercentage_{idt}"  runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBPercentage ID="CBPercentage_{idt}" PK_Question="{PK_Question}" runat="server" CSSClass="CustomControlValue"  AllowDefer="false" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBPercentage_{idt}" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
