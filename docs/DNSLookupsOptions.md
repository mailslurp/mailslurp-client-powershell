# DNSLookupsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Lookups** | [**DNSLookupOptions[]**](DNSLookupOptions) |  | 

## Examples

- Prepare the resource
```powershell
$DNSLookupsOptions = Initialize-maislurp-client-powershellDNSLookupsOptions  -Lookups null
```

- Convert the resource to JSON
```powershell
$DNSLookupsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

