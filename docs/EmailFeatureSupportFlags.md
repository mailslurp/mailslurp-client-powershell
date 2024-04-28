# EmailFeatureSupportFlags
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Notes** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailFeatureSupportFlags = Initialize-maislurp-client-powershellEmailFeatureSupportFlags  -Status null `
 -Notes null
```

- Convert the resource to JSON
```powershell
$EmailFeatureSupportFlags | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

