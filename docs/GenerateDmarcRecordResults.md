# GenerateDmarcRecordResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Type** | **String** | Domain Name Server Record Types | 
**Ttl** | **Int32** |  | 
**Value** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GenerateDmarcRecordResults = Initialize-maislurp-client-powershellGenerateDmarcRecordResults  -Name null `
 -Type null `
 -Ttl null `
 -Value null
```

- Convert the resource to JSON
```powershell
$GenerateDmarcRecordResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

