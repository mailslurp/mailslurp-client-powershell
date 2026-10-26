# Complaint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | [optional] 
**EventType** | **String** |  | [optional] 
**MailSource** | **String** |  | [optional] 
**MailMessageId** | **String** |  | [optional] 
**ComplaintRecipient** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$Complaint = Initialize-maislurp-client-powershellComplaint  -Id null `
 -UserId null `
 -EventType null `
 -MailSource null `
 -MailMessageId null `
 -ComplaintRecipient null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$Complaint | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

