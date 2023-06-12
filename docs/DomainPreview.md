# DomainPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Domain** | **String** |  | 
**CatchAllInboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**DomainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 
**IsVerified** | **Boolean** |  | 
**HasMissingRecords** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$DomainPreview = Initialize-maislurp-client-powershellDomainPreview  -Id null `
 -Domain null `
 -CatchAllInboxId null `
 -CreatedAt null `
 -DomainType null `
 -IsVerified null `
 -HasMissingRecords null
```

- Convert the resource to JSON
```powershell
$DomainPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

