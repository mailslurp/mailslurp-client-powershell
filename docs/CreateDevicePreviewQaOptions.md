# CreateDevicePreviewQaOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAudit** | **Boolean** | Run and persist an email content audit alongside the device preview run. | [optional] 
**DomainMonitor** | **Boolean** | Create or reuse a manual domain monitor for the sender domain and run it alongside the device preview run. | [optional] 
**SenderDomain** | **String** | Sender domain to use for domain monitor QA when the source email does not include a real From domain, such as HTML imports. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewQaOptions = Initialize-maislurp-client-powershellCreateDevicePreviewQaOptions  -EmailAudit null `
 -DomainMonitor null `
 -SenderDomain null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewQaOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

