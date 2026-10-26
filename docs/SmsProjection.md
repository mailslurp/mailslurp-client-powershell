# SmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Read** | **Boolean** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**FromNumber** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SmsProjection = Initialize-maislurp-client-powershellSmsProjection  -Body null `
 -Id null `
 -UserId null `
 -Read null `
 -PhoneNumber null `
 -CreatedAt null `
 -FromNumber null
```

- Convert the resource to JSON
```powershell
$SmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

