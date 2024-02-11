# ConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Enabled** | **Boolean** |  | 
**UserId** | **String** |  | 
**ConnectorType** | **String** |  | 
**ConnectorAuthType** | **String** |  | 
**SyncEnabled** | **Boolean** |  | 
**SyncScheduleType** | **String** |  | 
**SyncInterval** | **Int32** |  | [optional] 
**ImapHost** | **String** |  | [optional] 
**ImapPort** | **Int32** |  | [optional] 
**ImapUsername** | **String** |  | [optional] 
**ImapPassword** | **String** |  | [optional] 
**ImapSsl** | **Boolean** |  | [optional] 
**SelectFolder** | **String** |  | [optional] 
**SearchTerms** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorDto = Initialize-maislurp-client-powershellConnectorDto  -Id null `
 -Enabled null `
 -UserId null `
 -ConnectorType null `
 -ConnectorAuthType null `
 -SyncEnabled null `
 -SyncScheduleType null `
 -SyncInterval null `
 -ImapHost null `
 -ImapPort null `
 -ImapUsername null `
 -ImapPassword null `
 -ImapSsl null `
 -SelectFolder null `
 -SearchTerms null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

