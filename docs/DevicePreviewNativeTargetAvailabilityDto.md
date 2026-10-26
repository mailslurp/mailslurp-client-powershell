# DevicePreviewNativeTargetAvailabilityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Target** | **String** |  | 
**BaseTarget** | **String** |  | 
**Provider** | **String** |  | [optional] 
**Client** | **String** |  | 
**Surface** | **String** |  | 
**Platform** | **String** |  | 
**FormFactor** | **String** |  | 
**Engine** | **String** |  | 
**Appearance** | **String** |  | 
**Visible** | **Boolean** |  | 
**CreditCost** | **Int64** |  | 
**Tier** | **String** |  | 
**Enabled** | **Boolean** |  | 
**RequestQueueConfigured** | **Boolean** |  | 
**Status** | **String** |  | 
**StatusReason** | **String** |  | [optional] 
**HealthyWorkers** | **Int32** |  | 
**RecentWorkers** | **Int32** |  | 
**TimeoutSeconds** | **Int64** |  | 
**AvailableSlots** | **Int32** |  | 
**PublicPollingWorkers** | **Int32** |  | 
**MinimumWorkerReleaseVersion** | **String** |  | [optional] 
**DesiredWorkerReleaseVersion** | **String** |  | [optional] 
**DesiredReleaseWorkers** | **Int32** |  | [optional] 
**DesiredReleasePublicPollingWorkers** | **Int32** |  | [optional] 
**ReleaseVersions** | **System.Collections.Hashtable** |  | 
**DesiredLanes** | **Int32** |  | 
**MatchedLiveLanes** | **Int32** |  | 
**IdentityMismatchLanes** | **Int32** |  | 
**ServingLanes** | **Int32** |  | 
**SpareLanes** | **Int32** |  | 
**BusyLanes** | **Int32** |  | 
**DegradedLanes** | **Int32** |  | 
**QuarantinedLanes** | **Int32** |  | 
**ZeroCapacityLanes** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewNativeTargetAvailabilityDto = Initialize-maislurp-client-powershellDevicePreviewNativeTargetAvailabilityDto  -Target null `
 -BaseTarget null `
 -Provider null `
 -Client null `
 -Surface null `
 -Platform null `
 -FormFactor null `
 -Engine null `
 -Appearance null `
 -Visible null `
 -CreditCost null `
 -Tier null `
 -Enabled null `
 -RequestQueueConfigured null `
 -Status null `
 -StatusReason null `
 -HealthyWorkers null `
 -RecentWorkers null `
 -TimeoutSeconds null `
 -AvailableSlots null `
 -PublicPollingWorkers null `
 -MinimumWorkerReleaseVersion null `
 -DesiredWorkerReleaseVersion null `
 -DesiredReleaseWorkers null `
 -DesiredReleasePublicPollingWorkers null `
 -ReleaseVersions null `
 -DesiredLanes null `
 -MatchedLiveLanes null `
 -IdentityMismatchLanes null `
 -ServingLanes null `
 -SpareLanes null `
 -BusyLanes null `
 -DegradedLanes null `
 -QuarantinedLanes null `
 -ZeroCapacityLanes null
```

- Convert the resource to JSON
```powershell
$DevicePreviewNativeTargetAvailabilityDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

