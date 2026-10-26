# WaitForAIMessagesOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expectations** | [**AIMessageExpectation[]**](AIMessageExpectation) |  | 
**Since** | **System.DateTime** |  | 
**Timeout** | **Int64** |  | 
**Before** | **System.DateTime** |  | [optional] 
**AllowSharedMessages** | **Boolean** |  | 
**AiOptions** | [**AIMessageAIOptions**](AIMessageAIOptions) |  | 

## Examples

- Prepare the resource
```powershell
$WaitForAIMessagesOptions = Initialize-maislurp-client-powershellWaitForAIMessagesOptions  -Expectations null `
 -Since null `
 -Timeout null `
 -Before null `
 -AllowSharedMessages null `
 -AiOptions null
```

- Convert the resource to JSON
```powershell
$WaitForAIMessagesOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

