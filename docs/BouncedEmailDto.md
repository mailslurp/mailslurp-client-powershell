# BouncedEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BounceMta** | **String** |  | [optional] 
**BounceRecipients** | **String[]** |  | [optional] 
**BounceSubType** | **String** |  | [optional] 
**BounceType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 
**NotificationType** | **String** |  | 
**VarSender** | **String** |  | 
**SentToRecipients** | **String[]** |  | [optional] 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$BouncedEmailDto = Initialize-maislurp-client-powershellBouncedEmailDto  -BounceMta null `
 -BounceRecipients null `
 -BounceSubType null `
 -BounceType null `
 -CreatedAt null `
 -Id null `
 -NotificationType null `
 -VarSender null `
 -SentToRecipients null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$BouncedEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

