# SetInboxFavouritedOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **Boolean** | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 

## Examples

- Prepare the resource
```powershell
$SetInboxFavouritedOptions = Initialize-maislurp-client-powershellSetInboxFavouritedOptions  -State null
```

- Convert the resource to JSON
```powershell
$SetInboxFavouritedOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

