# DomainNameRecord
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
$DomainNameRecord = Initialize-maislurp-client-powershellDomainNameRecord  -Name null `
 -RecordEntries null `
 -RecordType null `
 -Ttl null
```

- Convert the resource to JSON
```powershell
$DomainNameRecord | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

