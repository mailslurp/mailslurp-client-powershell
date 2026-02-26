# DNSLookupResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecordType** | **String** | Domain Name Server Record Types | 
**Ttl** | **Int64** |  | 
**RecordEntries** | **String[]** |  | 
**Name** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DNSLookupResult = Initialize-maislurp-client-powershellDNSLookupResult  -RecordType null `
 -Ttl null `
 -RecordEntries null `
 -Name null
```

- Convert the resource to JSON
```powershell
$DNSLookupResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

