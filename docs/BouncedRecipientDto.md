# BouncedRecipientDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 
**Recipient** | **String** |  | 
**DiagnosticCode** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$BouncedRecipientDto = Initialize-maislurp-client-powershellBouncedRecipientDto  -Id null `
 -UserId null `
 -SentEmailId null `
 -Recipient null `
 -DiagnosticCode null `
 -Action null `
 -Status null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$BouncedRecipientDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

