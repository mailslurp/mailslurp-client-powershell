# GenerateStructuredContentEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailId** | **String** | Email ID to read and pass to AI | 
**ContentSelector** | **String** | Content selector to select part of email to operate on | [optional] 
**Instructions** | **String** | Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints. | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | 

## Examples

- Prepare the resource
```powershell
$GenerateStructuredContentEmailOptions = Initialize-maislurp-client-powershellGenerateStructuredContentEmailOptions  -EmailId null `
 -ContentSelector null `
 -Instructions null `
 -OutputSchema null
```

- Convert the resource to JSON
```powershell
$GenerateStructuredContentEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

