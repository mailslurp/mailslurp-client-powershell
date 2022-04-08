# InlineObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentTypeHeader** | **String** | Optional content type header of attachment | [optional] 
**File** | **System.IO.FileInfo** |  | 

## Examples

- Prepare the resource
```powershell
$InlineObject = Initialize-maislurp-client-powershellInlineObject  -ContentTypeHeader null `
 -File null
```

- Convert the resource to JSON
```powershell
$InlineObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

