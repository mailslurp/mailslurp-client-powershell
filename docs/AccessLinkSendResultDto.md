# AccessLinkSendResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ToEmailAddress** | **String** | Email address the access-link email was sent to | 
**FromEmailAddress** | **String** | Email address the access-link email was sent from | 
**FromName** | **String** | Display name used by the sender | [optional] 
**ProviderCode** | **String** | Coarse email provider code. Does not expose sender route logic. | 

## Examples

- Prepare the resource
```powershell
$AccessLinkSendResultDto = Initialize-maislurp-client-powershellAccessLinkSendResultDto  -ToEmailAddress null `
 -FromEmailAddress null `
 -FromName null `
 -ProviderCode null
```

- Convert the resource to JSON
```powershell
$AccessLinkSendResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

