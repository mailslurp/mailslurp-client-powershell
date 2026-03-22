# EmailAuditUrlIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | 
**StatusCode** | **Int32** |  | [optional] 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailAuditUrlIssue = Initialize-maislurp-client-powershellEmailAuditUrlIssue  -Url null `
 -StatusCode null `
 -Message null
```

- Convert the resource to JSON
```powershell
$EmailAuditUrlIssue | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

