# DNSLookupResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**RecordEntries** | **String[]** |  | 
**RecordType** | **String** |  | 
**Ttl** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$DNSLookupResult = Initialize-maislurp-client-powershellDNSLookupResult  -Name null `
 -RecordEntries null `
 -RecordType null `
 -Ttl null
```

- Convert the resource to JSON
```powershell
$DNSLookupResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

