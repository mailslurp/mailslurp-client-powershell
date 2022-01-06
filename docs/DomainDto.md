# DomainDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Domain** | **String** | Custom domain name | [optional] 
**VerificationToken** | **String** | Verification tokens | [optional] 
**DkimTokens** | **String[]** | Unique token DKIM tokens | [optional] 
**DomainNameRecords** | [**DomainNameRecord[]**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**CatchAllInboxId** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 
**DomainType** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**Verified** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainDto = Initialize-maislurp-client-powershellDomainDto  -Id null `
 -UserId null `
 -Domain null `
 -VerificationToken null `
 -DkimTokens null `
 -DomainNameRecords null `
 -CatchAllInboxId null `
 -CreatedAt null `
 -UpdatedAt null `
 -DomainType null `
 -Verified null
```

- Convert the resource to JSON
```powershell
$DomainDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

