# AssertAIMessageOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AIMessageReference**](AIMessageReference) |  | 
**Assertions** | [**AIMessageAssertion[]**](AIMessageAssertion) |  | 
**Timeout** | **Int64** |  | 
**AiOptions** | [**AIMessageAIOptions**](AIMessageAIOptions) |  | 

## Examples

- Prepare the resource
```powershell
$AssertAIMessageOptions = Initialize-maislurp-client-powershellAssertAIMessageOptions  -Message null `
 -Assertions null `
 -Timeout null `
 -AiOptions null
```

- Convert the resource to JSON
```powershell
$AssertAIMessageOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

