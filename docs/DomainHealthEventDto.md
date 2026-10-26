# DomainHealthEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DomainId** | **String** |  | [optional] 
**DomainName** | **String** |  | [optional] 
**AccountRegion** | **String** |  | [optional] 
**EventType** | **String** |  | 
**Status** | **String** |  | 
**Severity** | **String** |  | 
**Title** | **String** |  | 
**Message** | **String** |  | 
**Recommendation** | **String** |  | [optional] 
**EventTime** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainHealthEventDto = Initialize-maislurp-client-powershellDomainHealthEventDto  -Id null `
 -DomainId null `
 -DomainName null `
 -AccountRegion null `
 -EventType null `
 -Status null `
 -Severity null `
 -Title null `
 -Message null `
 -Recommendation null `
 -EventTime null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$DomainHealthEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

