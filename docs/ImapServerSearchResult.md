# ImapServerSearchResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**ImapEmailProjection[]**](ImapEmailProjection) |  | 

## Examples

- Prepare the resource
```powershell
$ImapServerSearchResult = Initialize-maislurp-client-powershellImapServerSearchResult  -Results null
```

- Convert the resource to JSON
```powershell
$ImapServerSearchResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

