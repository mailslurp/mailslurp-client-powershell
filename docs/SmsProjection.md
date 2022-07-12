# SmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Read** | **Boolean** |  | 
**FromNumber** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SmsProjection = Initialize-maislurp-client-powershellSmsProjection  -Id null `
 -UserId null `
 -PhoneNumber null `
 -CreatedAt null `
 -Read null `
 -FromNumber null
```

- Convert the resource to JSON
```powershell
$SmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

