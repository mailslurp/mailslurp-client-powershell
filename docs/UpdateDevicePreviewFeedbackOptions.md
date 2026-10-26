# UpdateDevicePreviewFeedbackOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | [optional] 
**Rating** | **Int32** |  | [optional] 
**Title** | **String** |  | [optional] 
**Comment** | **String** |  | [optional] 
**InternalNote** | **String** |  | [optional] 
**AppendInternalNote** | **Boolean** |  | [optional] 
**SessionId** | **String** |  | [optional] 
**LiveViewUrl** | **String** |  | [optional] 
**Metadata** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateDevicePreviewFeedbackOptions = Initialize-maislurp-client-powershellUpdateDevicePreviewFeedbackOptions  -Status null `
 -Rating null `
 -Title null `
 -Comment null `
 -InternalNote null `
 -AppendInternalNote null `
 -SessionId null `
 -LiveViewUrl null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$UpdateDevicePreviewFeedbackOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

