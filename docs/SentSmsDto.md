# SentSmsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**ToNumber** | **String** |  | 
**Body** | **String** |  | 
**Sid** | **String** |  | 
**ReplyToSid** | **String** |  | [optional] 
**ReplyToId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SentSmsDto = Initialize-maislurp-client-powershellSentSmsDto  -Id null `
 -UserId null `
 -PhoneNumber null `
 -FromNumber null `
 -ToNumber null `
 -Body null `
 -Sid null `
 -ReplyToSid null `
 -ReplyToId null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$SentSmsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

