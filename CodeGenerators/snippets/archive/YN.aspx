<!-- {idt} {QuestionText} -->
<tr id="r-m-{idt}" {Dependancy}>
    <td class="LabelColumn">
        <uc:CBlabel ID="CBlabel_{idt}" LinkEditID="CBYesNo2_{idt}" runat="server" CSSClass="CustomControlLabel" LabelType="QuestionNumber"  />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_{idt}_i" LinkEditID="CBYesNo2_{idt}" runat="server" CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" />
    </td>
    <td class="ControlColumn">
        <uc:CBYesNo ID="CBYesNo2_{idt}" runat="server" PK_Question="{PK_Question}" TabIndex="1" CSSClass="CustomControlValue" />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" LinkEditID="CBYesNo2_{idt}" runat="server"   ShowAudit="true" ShowHelp="True" ShowNarrative="true" />
    </td>
</tr>
