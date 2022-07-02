# SmsMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**Body** | **String** |  | 
**Read** | **Boolean** |  | 
**Sid** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SmsMessage = Initialize-maislurp-client-powershellSmsMessage  -Id null `
 -UserId null `
 -PhoneNumber null `
 -FromNumber null `
 -Body null `
 -Read null `
 -Sid null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$SmsMessage | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

