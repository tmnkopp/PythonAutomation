<!-- {idt} {QuestionText} -->
<tr id="r-m-{idt}"> 
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_{idt}_i"  LinkEditID="CBtext_{idt}" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign"   />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_{idt}_ii" LinkEditID="CBtext_{idt}" runat="server"  CSSClass="CustomControlLabelNoVertAlign" LabelType="Question" /> 
    </td>
    <td class="ControlColumn" >
        <uc:CBtext2 ID="CBtext_{idt}"  PK_Question="{PK_Question}"  runat="server" CSSClass="CustomControlValue" EditState="ReadMode"
            IsReadOnly="false" NullDisplay="Blank" UseSpellCheck="false" MaxLength="4000"
            AllowNA="false" TextMode="1" Columns="100" Rows="5" />
    </td>
    <td class="ControlColumn" >
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" runat="server" LinkEditID="CBtext_{idt}"  ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20" />
    </td>
</tr>
