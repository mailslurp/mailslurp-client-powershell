# InboxForwarderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Field** | **String** |  | 
**Match** | **String** |  | 
**ForwardToRecipients** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxForwarderDto = Initialize-maislurp-client-powershellInboxForwarderDto  -Id null `
 -InboxId null `
 -Name null `
 -Field null `
 -Match null `
 -ForwardToRecipients null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$InboxForwarderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

