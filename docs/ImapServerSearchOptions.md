# ImapServerSearchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SeqNum** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 
**Since** | **System.DateTime** |  | [optional] 
**Before** | **System.DateTime** |  | [optional] 
**SentSince** | **System.DateTime** |  | [optional] 
**SentBefore** | **System.DateTime** |  | [optional] 
**Header** | [**System.Collections.Hashtable**](Array) |  | [optional] 
**Body** | **String[]** |  | [optional] 
**Text** | **String[]** |  | [optional] 
**WithFlags** | **String[]** |  | [optional] 
**WithoutFlags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapServerSearchOptions = Initialize-maislurp-client-powershellImapServerSearchOptions  -SeqNum null `
 -Uid null `
 -Since null `
 -Before null `
 -SentSince null `
 -SentBefore null `
 -Header null `
 -Body null `
 -Text null `
 -WithFlags null `
 -WithoutFlags null
```

- Convert the resource to JSON
```powershell
$ImapServerSearchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

