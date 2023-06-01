
<!-- {idt}  {QuestionText} -->
<tr id="r-m-{idt}" {Dependancy}>
    <td class="LabelNoWrap" >
        <uc:CBlabel ID="CBlabel_{idt}_i" LinkEditID="CbPickListMultiSelect_{idt}" runat="server" LabelType="QuestionNumber" CSSClass="CustomControlLabelNoVertAlign" />
    </td>
    <td class="LabelColumn Question" >
        <uc:CBlabel ID="CBlabel_{idt}_ii" LinkEditID="CbPickListMultiSelect_{idt}"  runat="server" LabelType="Question" CSSClass="CustomControlLabelNoVertAlign"/> 
        <asp:Label ID="Label_{idt}_i" runat="server" Text="" CssClass="CustomControlLabelNoVertAlign"></asp:Label>
    </td>
    <td class="ControlColumn">
        <uc:CbPickListMultiSelect ID="CbPickListMultiSelect_{idt}" PK_Question="{PK_Question}" PK_PickListType="{PK_PickListType}" runat="server" CSSClass="CustomControlValue" 
            EditState="EditMode" SelfLoadingOption="PicklistByPK"  />
    </td>
    <td class="ControlColumn">
        <uc:CBoptionalLinks ID="CBoptionalLinks_{idt}" LinkEditID="CbPickListMultiSelect_{idt}" ShowAudit="True" ShowHelp="True" ShowNarrative="true" AuditRecs="20"  runat="server" />
    </td>
 </tr>
 