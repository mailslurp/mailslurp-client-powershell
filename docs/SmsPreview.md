# SmsPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Body** | **String** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SmsPreview = Initialize-maislurp-client-powershellSmsPreview  -Id null `
 -UserId null `
 -Body null `
 -PhoneNumber null `
 -FromNumber null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$SmsPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

