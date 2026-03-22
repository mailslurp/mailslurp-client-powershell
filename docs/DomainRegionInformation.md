# DomainRegionInformation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainName** | **String** |  | 
**Verified** | **Boolean** |  | 
**DomainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 
**AccountRegion** | **String** |  | [optional] 
**CreationEnabled** | **Boolean** |  | 
**SendingEnabled** | **Boolean** |  | 
**Active** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$DomainRegionInformation = Initialize-maislurp-client-powershellDomainRegionInformation  -DomainName null `
 -Verified null `
 -DomainType null `
 -AccountRegion null `
 -CreationEnabled null `
 -SendingEnabled null `
 -Active null
```

- Convert the resource to JSON
```powershell
$DomainRegionInformation | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

