# ImapEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Read** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Uid** | **Int64** |  | 
**SeqNum** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$ImapEmailProjection = Initialize-maislurp-client-powershellImapEmailProjection  -Id null `
 -Read null `
 -CreatedAt null `
 -Uid null `
 -SeqNum null
```

- Convert the resource to JSON
```powershell
$ImapEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

