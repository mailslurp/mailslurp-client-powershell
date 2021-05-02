# CreateDomainOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedCatchAllInbox** | **Boolean** | Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID. | [optional] 
**Description** | **String** | Optional description of the domain. | [optional] 
**Domain** | **String** | The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So &#x60;test.com&#x60; covers all subdomains such as &#x60;mail.test.com&#x60;. Don&#39;t include a protocol such as &#x60;http://&#x60;. Once added you must complete the verification steps by adding the returned records to your domain. | [optional] 
**DomainType** | **String** | Domain type to create. HTTP or SMTP domain. HTTP domain uses MailSlurps SES MX records. SMTP uses a custom SMTP server MX record | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDomainOptions = Initialize-maislurp-client-powershellCreateDomainOptions  -CreatedCatchAllInbox null `
 -Description null `
 -Domain null `
 -DomainType null
```

- Convert the resource to JSON
```powershell
$CreateDomainOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

