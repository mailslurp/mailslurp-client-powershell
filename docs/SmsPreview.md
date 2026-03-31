# SmsPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Body** | **String** | TXT message content | 
**PhoneNumber** | **String** | ID of the phone number that received this SMS | 
**FromNumber** | **String** | Sender number | 
**Read** | **Boolean** | Is the message read or unread | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SmsPreview = Initialize-maislurp-client-powershellSmsPreview  -Id null `
 -UserId null `
 -Body null `
 -PhoneNumber null `
 -FromNumber null `
 -Read null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$SmsPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

