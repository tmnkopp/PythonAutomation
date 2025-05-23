
Imports CyberBalance.VB.Core
Imports CyberBalance.VB.Web.UI
Public Class _{classname}
    Inherits FismaFormBasePage2
    ReadOnly _odb As New DataBaseUtils2
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreRender
        If Not IsEditMode Then
            lblError.Visible = False
        End If 
        If Not Session("LinkFieldCode") Is Nothing Then
            lblError.Text = ValidationResults(Nothing, CBlabelGroup.PK_key.ToString())
            Session("LinkFieldCode") = Nothing
        End If
    End Sub
    Protected Overrides Function FormValid(Optional ByVal bApprovalSubmit As Boolean = False) As Boolean 
        lblError.Text = ValidationResults(Panel1.Controls, CBlabelGroup.PK_key.ToString())
        Session("LinkFieldCode") = Nothing 
        Return True
    End Function

End Class