# GenerateSpfRecordOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | Domain the SPF record applies to | 
**IncludeDomains** | **String[]** | Optional include domains | [optional] 
**Ip4** | **String[]** | Optional IPv4 CIDRs or hosts | [optional] 
**Ip6** | **String[]** | Optional IPv6 CIDRs or hosts | [optional] 
**Mx** | **Boolean** | Whether to include the MX mechanism | 
**A** | **Boolean** | Whether to include the A mechanism | 
**AllPolicy** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GenerateSpfRecordOptions = Initialize-maislurp-client-powershellGenerateSpfRecordOptions  -Domain example.com `
 -IncludeDomains null `
 -Ip4 null `
 -Ip6 null `
 -Mx null `
 -A null `
 -AllPolicy null
```

- Convert the resource to JSON
```powershell
$GenerateSpfRecordOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

