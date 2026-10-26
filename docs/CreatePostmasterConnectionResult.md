# CreatePostmasterConnectionResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | 
**State** | **String** |  | 
**Scope** | **String** |  | 
**RedirectUri** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CreatePostmasterConnectionResult = Initialize-maislurp-client-powershellCreatePostmasterConnectionResult  -Url null `
 -State null `
 -Scope null `
 -RedirectUri null
```

- Convert the resource to JSON
```powershell
$CreatePostmasterConnectionResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

