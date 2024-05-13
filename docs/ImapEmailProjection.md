# ImapEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Read** | **Boolean** |  | [optional] 
**Uid** | **Int64** |  | 
**SeqNum** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ImapEmailProjection = Initialize-maislurp-client-powershellImapEmailProjection  -Read null `
 -Uid null `
 -SeqNum null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ImapEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

