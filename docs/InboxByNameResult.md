# InboxByNameResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | [optional] 
**Exists** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$InboxByNameResult = Initialize-maislurp-client-powershellInboxByNameResult  -InboxId null `
 -Exists null
```

- Convert the resource to JSON
```powershell
$InboxByNameResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

