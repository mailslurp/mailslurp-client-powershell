# NameServerRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Priority** | **String** |  | 
**Raw** | **String** |  | 
**RecordType** | **String** |  | 
**Value** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$NameServerRecord = Initialize-maislurp-client-powershellNameServerRecord  -Priority null `
 -Raw null `
 -RecordType null `
 -Value null
```

- Convert the resource to JSON
```powershell
$NameServerRecord | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

