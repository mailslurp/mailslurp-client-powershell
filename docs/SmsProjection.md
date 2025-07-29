# SmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**Read** | **Boolean** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SmsProjection = Initialize-maislurp-client-powershellSmsProjection  -Body null `
 -UserId null `
 -CreatedAt null `
 -PhoneNumber null `
 -FromNumber null `
 -Read null `
 -Id null
```

- Convert the resource to JSON
```powershell
$SmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

