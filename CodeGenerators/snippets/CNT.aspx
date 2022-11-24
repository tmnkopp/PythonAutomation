<!-- {idt} {QuestionText} -->
<tr id="r-m-{idt}">
    <td class="LabelColumn QuestionNumber">
        <uc:CBlabel ID="CBlabel_{idt}" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_{idt}" LabelType="QuestionNumber" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_{idt}_i" CSSClass="CustomControlLabelNoVertAlign" runat="server" LinkEditID="CBNumeric_{idt}" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBnumeric2 ID="CBNumeric_{idt}" runat="server" CSSClass="CustomControlValue" PK_Question="{PK_Question}" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBNumeric_{idt}" ShowAudit="true" ShowHelp="true" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
