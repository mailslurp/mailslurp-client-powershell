# SmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Body** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**FromNumber** | **String** |  | 
**Read** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$SmsProjection = Initialize-maislurp-client-powershellSmsProjection  -Id null `
 -Body null `
 -UserId null `
 -PhoneNumber null `
 -CreatedAt null `
 -FromNumber null `
 -Read null
```

- Convert the resource to JSON
```powershell
$SmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

