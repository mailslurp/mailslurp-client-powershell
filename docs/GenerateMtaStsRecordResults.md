# GenerateMtaStsRecordResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Type** | **String** | Domain Name Server Record Types | 
**Ttl** | **Int32** |  | 
**Value** | **String** |  | 
**WellKnownValue** | **String** |  | 
**WellKnownUrl** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GenerateMtaStsRecordResults = Initialize-maislurp-client-powershellGenerateMtaStsRecordResults  -Name null `
 -Type null `
 -Ttl null `
 -Value null `
 -WellKnownValue null `
 -WellKnownUrl null
```

- Convert the resource to JSON
```powershell
$GenerateMtaStsRecordResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

