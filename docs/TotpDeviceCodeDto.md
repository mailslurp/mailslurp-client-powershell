# TotpDeviceCodeDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | 
**ExpiresAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TotpDeviceCodeDto = Initialize-maislurp-client-powershellTotpDeviceCodeDto  -Code null `
 -ExpiresAt null
```

- Convert the resource to JSON
```powershell
$TotpDeviceCodeDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

