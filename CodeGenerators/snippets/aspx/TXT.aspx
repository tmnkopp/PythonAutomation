<!-- {idt} {QT_ABBR} -->
<tr id="r-m-{idt}" > 
    <td >
        <uc:CBQuestion ID="CBquestion_{idt}"   LinkEditID="CBtext_{idt}" runat="server" LabelType="FullQuestion"  CSSClass="CustomControlLabelNoVertAlign"  />
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_{idt}"  QuestionNumber="{IdText}"   runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBtext_{idt}"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>

