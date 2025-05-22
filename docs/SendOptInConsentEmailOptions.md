# SendOptInConsentEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TemplateHtml** | **String** |  | 
**Subject** | **String** |  | 
**SenderInbox** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SendOptInConsentEmailOptions = Initialize-maislurp-client-powershellSendOptInConsentEmailOptions  -TemplateHtml null `
 -Subject null `
 -SenderInbox null
```

- Convert the resource to JSON
```powershell
$SendOptInConsentEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

