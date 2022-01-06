# NameServerRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Raw** | **String** |  | [optional] 
**RecordType** | **String** |  | [optional] 
**Priority** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NameServerRecord = Initialize-maislurp-client-powershellNameServerRecord  -Raw null `
 -RecordType null `
 -Priority null `
 -Value null
```

- Convert the resource to JSON
```powershell
$NameServerRecord | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

