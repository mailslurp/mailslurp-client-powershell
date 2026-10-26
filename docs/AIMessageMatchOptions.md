# AIMessageMatchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prompt** | **String** |  | 
**AiOptions** | [**AIMessageAIOptions**](AIMessageAIOptions) |  | 

## Examples

- Prepare the resource
```powershell
$AIMessageMatchOptions = Initialize-maislurp-client-powershellAIMessageMatchOptions  -Prompt null `
 -AiOptions null
```

- Convert the resource to JSON
```powershell
$AIMessageMatchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

