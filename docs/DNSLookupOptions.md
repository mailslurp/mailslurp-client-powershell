# DNSLookupOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** | List of record types you wish to query such as MX, DNS, TXT, NS, A etc. | 
**RecordTypes** | **String[]** | List of record types you wish to query such as MX, DNS, TXT, NS, A etc. | 
**OmitFinalDNSDot** | **Boolean** | Optionally control whether to omit the final dot in full DNS name values. | [optional] 

## Examples

- Prepare the resource
```powershell
$DNSLookupOptions = Initialize-maislurp-client-powershellDNSLookupOptions  -Hostname null `
 -RecordTypes null `
 -OmitFinalDNSDot null
```

- Convert the resource to JSON
```powershell
$DNSLookupOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

