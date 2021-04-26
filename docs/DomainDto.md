# DomainDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CatchAllInboxId** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**DkimTokens** | **String[]** | Unique token DKIM tokens | [optional] 
**Domain** | **String** | Custom domain name | [optional] 
**DomainNameRecords** | [**DomainNameRecord[]**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**Id** | **String** |  | 
**IsVerified** | **Boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**VerificationToken** | **String** | Verification tokens | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainDto = Initialize-maislurp-client-powershellDomainDto  -CatchAllInboxId null `
 -CreatedAt null `
 -DkimTokens null `
 -Domain null `
 -DomainNameRecords null `
 -Id null `
 -IsVerified null `
 -UpdatedAt null `
 -UserId null `
 -VerificationToken null
```

- Convert the resource to JSON
```powershell
$DomainDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

