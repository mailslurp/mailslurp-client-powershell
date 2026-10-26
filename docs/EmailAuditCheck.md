# EmailAuditCheck
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Category** | **String** | Email audit check category | 
**Status** | **String** | Outcome of an automated email check; REVIEW requires human verification and is not a compliance verdict | 
**Title** | **String** |  | 
**Message** | **String** |  | 
**Recommendation** | **String** |  | 
**Evidence** | **String[]** |  | 
**ReferenceUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailAuditCheck = Initialize-maislurp-client-powershellEmailAuditCheck  -Id null `
 -Category null `
 -Status null `
 -Title null `
 -Message null `
 -Recommendation null `
 -Evidence null `
 -ReferenceUrl null
```

- Convert the resource to JSON
```powershell
$EmailAuditCheck | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

