# DomainInformation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainName** | **String** |  | 
**Verified** | **Boolean** |  | 
**DomainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 

## Examples

- Prepare the resource
```powershell
$DomainInformation = Initialize-maislurp-client-powershellDomainInformation  -DomainName null `
 -Verified null `
 -DomainType null
```

- Convert the resource to JSON
```powershell
$DomainInformation | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

