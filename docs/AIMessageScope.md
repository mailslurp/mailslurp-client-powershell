# AIMessageScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxIds** | **String[]** |  | 
**PhoneNumberIds** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$AIMessageScope = Initialize-maislurp-client-powershellAIMessageScope  -InboxIds null `
 -PhoneNumberIds null
```

- Convert the resource to JSON
```powershell
$AIMessageScope | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

