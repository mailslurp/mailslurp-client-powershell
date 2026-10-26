# SentSmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**FromNumber** | **String** |  | 
**ToNumber** | **String** |  | 
**ReplyToId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentSmsProjection = Initialize-maislurp-client-powershellSentSmsProjection  -Body null `
 -Id null `
 -UserId null `
 -PhoneNumber null `
 -CreatedAt null `
 -FromNumber null `
 -ToNumber null `
 -ReplyToId null
```

- Convert the resource to JSON
```powershell
$SentSmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

