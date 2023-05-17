# InlineObject1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Short** | **Int32** |  | [optional] 
**Char** | **String** |  | [optional] 
**Int** | **Int32** |  | [optional] 
**Long** | **Int64** |  | [optional] 
**Float** | **Double** |  | [optional] 
**Double** | **Double** |  | [optional] 
**Direct** | **Boolean** |  | [optional] 
**ReadOnly** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineObject1 = Initialize-maislurp-client-powershellInlineObject1  -Short null `
 -Char null `
 -Int null `
 -Long null `
 -Float null `
 -Double null `
 -Direct null `
 -ReadOnly null
```

- Convert the resource to JSON
```powershell
$InlineObject1 | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

