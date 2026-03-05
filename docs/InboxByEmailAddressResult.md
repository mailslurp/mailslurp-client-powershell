# InboxByEmailAddressResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | [optional] 
**Exists** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$InboxByEmailAddressResult = Initialize-maislurp-client-powershellInboxByEmailAddressResult  -InboxId null `
 -Exists null
```

- Convert the resource to JSON
```powershell
$InboxByEmailAddressResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

