# BouncedEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | 
**NotificationType** | **String** |  | 
**SentToRecipients** | **String[]** |  | [optional] 
**VarSender** | **String** |  | 
**BounceMta** | **String** |  | [optional] 
**BounceType** | **String** |  | [optional] 
**BounceRecipients** | **String[]** |  | [optional] 
**BounceSubType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$BouncedEmailDto = Initialize-maislurp-client-powershellBouncedEmailDto  -Id null `
 -UserId null `
 -NotificationType null `
 -SentToRecipients null `
 -VarSender null `
 -BounceMta null `
 -BounceType null `
 -BounceRecipients null `
 -BounceSubType null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$BouncedEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

