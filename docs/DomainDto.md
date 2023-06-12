# DomainDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Domain** | **String** | Custom domain name | 
**VerificationToken** | **String** | Verification tokens | 
**DkimTokens** | **String[]** | Unique token DKIM tokens | 
**MissingRecordsMessage** | **String** | If the domain is missing records then show which pairs are missing. | [optional] 
**HasMissingRecords** | **Boolean** | Whether the domain has missing required records. If true then see the domain in the dashboard app. | 
**IsVerified** | **Boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | 
**DomainNameRecords** | [**DomainNameRecord[]**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | 
**CatchAllInboxId** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**DomainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 

## Examples

- Prepare the resource
```powershell
$DomainDto = Initialize-maislurp-client-powershellDomainDto  -Id null `
 -UserId null `
 -Domain null `
 -VerificationToken null `
 -DkimTokens null `
 -MissingRecordsMessage null `
 -HasMissingRecords null `
 -IsVerified null `
 -DomainNameRecords null `
 -CatchAllInboxId null `
 -CreatedAt null `
 -UpdatedAt null `
 -DomainType null
```

- Convert the resource to JSON
```powershell
$DomainDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

