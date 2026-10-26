# CheckEmailBlacklistOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | Domain to check against configured domain blocklists. Domain A and MX addresses are not treated as outbound sending IPs unless includeDomainInfrastructure is explicitly enabled. | [optional] 
**IpAddress** | **String** | Specific observed or configured outbound IPv4 address to check directly | [optional] 
**MxHost** | **String** | Specific MX host to resolve and check as inbound infrastructure. MX results do not prove outbound sender reputation. | [optional] 
**IncludeDomainInfrastructure** | **Boolean** | Explicitly include the domain A address and discovered MX addresses as infrastructure diagnostics. Defaults to false because these addresses are normally not outbound sending IPs. | [optional] 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckEmailBlacklistOptions = Initialize-maislurp-client-powershellCheckEmailBlacklistOptions  -Domain null `
 -IpAddress null `
 -MxHost null `
 -IncludeDomainInfrastructure null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CheckEmailBlacklistOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

