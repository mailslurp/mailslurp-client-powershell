# GenerateStructuredContentSmsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SmsId** | **String** | SMS ID to read and pass to AI | 
**Instructions** | **String** | Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints. | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**TransformId** | **String** | ID of transformer to apply | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateStructuredContentSmsOptions = Initialize-maislurp-client-powershellGenerateStructuredContentSmsOptions  -SmsId null `
 -Instructions null `
 -OutputSchema null `
 -TransformId null
```

- Convert the resource to JSON
```powershell
$GenerateStructuredContentSmsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

