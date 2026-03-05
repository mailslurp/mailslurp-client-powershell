# DomainNameRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Domain Name Server Record Label | 
**Required** | **Boolean** |  | 
**RecordType** | **String** | Domain Name Server Record Types | 
**Name** | **String** |  | 
**RecordEntries** | **String[]** |  | 
**Ttl** | **Int64** |  | 
**AlternativeRecordEntries** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainNameRecord = Initialize-maislurp-client-powershellDomainNameRecord  -Label null `
 -Required null `
 -RecordType null `
 -Name null `
 -RecordEntries null `
 -Ttl null `
 -AlternativeRecordEntries null
```

- Convert the resource to JSON
```powershell
$DomainNameRecord | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

