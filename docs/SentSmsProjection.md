# SentSmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Body** | **String** |  | 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**ToNumber** | **String** |  | 
**ReplyToId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentSmsProjection = Initialize-maislurp-client-powershellSentSmsProjection  -Id null `
 -Body null `
 -UserId null `
 -CreatedAt null `
 -PhoneNumber null `
 -FromNumber null `
 -ToNumber null `
 -ReplyToId null
```

- Convert the resource to JSON
```powershell
$SentSmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

