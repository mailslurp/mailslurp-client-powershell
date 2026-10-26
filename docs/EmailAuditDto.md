# EmailAuditDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**EmailId** | **String** |  | [optional] 
**FromAddress** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**Analysis** | [**EmailAuditAnalysisResult**](EmailAuditAnalysisResult) |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmailAuditDto = Initialize-maislurp-client-powershellEmailAuditDto  -Id null `
 -UserId null `
 -EmailId null `
 -FromAddress null `
 -Recipient null `
 -Subject null `
 -Analysis null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailAuditDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

