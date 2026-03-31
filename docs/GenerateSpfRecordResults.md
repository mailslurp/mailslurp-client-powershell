# GenerateSpfRecordResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Type** | **String** | Domain Name Server Record Types | 
**Ttl** | **Int32** |  | 
**Value** | **String** |  | 
**EstimatedLookupCount** | **Int32** |  | 
**Warnings** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$GenerateSpfRecordResults = Initialize-maislurp-client-powershellGenerateSpfRecordResults  -Name null `
 -Type null `
 -Ttl null `
 -Value null `
 -EstimatedLookupCount null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$GenerateSpfRecordResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

