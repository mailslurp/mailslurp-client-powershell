# SentSmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**ToNumber** | **String** |  | 
**ReplyToId** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SentSmsProjection = Initialize-maislurp-client-powershellSentSmsProjection  -Body null `
 -CreatedAt null `
 -UserId null `
 -PhoneNumber null `
 -FromNumber null `
 -ToNumber null `
 -ReplyToId null `
 -Id null
```

- Convert the resource to JSON
```powershell
$SentSmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

