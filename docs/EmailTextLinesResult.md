# EmailTextLinesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Lines** | **String[]** |  | [optional] 
**Body** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailTextLinesResult = Initialize-maislurp-client-powershellEmailTextLinesResult  -Lines null `
 -Body null
```

- Convert the resource to JSON
```powershell
$EmailTextLinesResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

