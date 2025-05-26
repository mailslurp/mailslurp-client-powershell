# maislurp-client-powershell.maislurp-client-powershell/Api.AttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteAllAttachments**](AttachmentControllerApi#Invoke-DeleteAllAttachments) | **DELETE** /attachments | Delete all attachments
[**Invoke-DeleteAttachment**](AttachmentControllerApi#Invoke-DeleteAttachment) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**Invoke-DownloadAttachmentAsBase64Encoded**](AttachmentControllerApi#Invoke-DownloadAttachmentAsBase64Encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**Invoke-DownloadAttachmentAsBytes**](AttachmentControllerApi#Invoke-DownloadAttachmentAsBytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**Get-Attachment**](AttachmentControllerApi#Get-Attachment) | **GET** /attachments/{attachmentId} | Get an attachment entity
[**Get-AttachmentInfo**](AttachmentControllerApi#Get-AttachmentInfo) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**Get-Attachments**](AttachmentControllerApi#Get-Attachments) | **GET** /attachments | Get email attachments
[**Invoke-UploadAttachment**](AttachmentControllerApi#Invoke-UploadAttachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**Invoke-UploadAttachmentBytes**](AttachmentControllerApi#Invoke-UploadAttachmentBytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**Invoke-UploadMultipartForm**](AttachmentControllerApi#Invoke-UploadMultipartForm) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


<a name="Invoke-DeleteAllAttachments"></a>
# **Invoke-DeleteAllAttachments**
> void Invoke-DeleteAllAttachments<br>

Delete all attachments

Delete all attachments

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all attachments
try {
     $Result = Invoke-DeleteAllAttachments
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllAttachments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAttachment"></a>
# **Invoke-DeleteAttachment**
> void Invoke-DeleteAttachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Delete an attachment

Delete an attachment

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Delete an attachment
try {
     $Result = Invoke-DeleteAttachment -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAttachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttachmentId** | **String**| ID of attachment | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadAttachmentAsBase64Encoded"></a>
# **Invoke-DownloadAttachmentAsBase64Encoded**
> DownloadAttachmentDto Invoke-DownloadAttachmentAsBase64Encoded<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
try {
     $Result = Invoke-DownloadAttachmentAsBase64Encoded -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadAttachmentAsBase64Encoded: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttachmentId** | **String**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadAttachmentAsBytes"></a>
# **Invoke-DownloadAttachmentAsBytes**
> SystemByte Invoke-DownloadAttachmentAsBytes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
try {
     $Result = Invoke-DownloadAttachmentAsBytes -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadAttachmentAsBytes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttachmentId** | **String**| ID of attachment | 

### Return type

[**SystemByte**](SystemByte) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Attachment"></a>
# **Get-Attachment**
> AttachmentEntityDto Get-Attachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Get an attachment entity

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Get an attachment entity
try {
     $Result = Get-Attachment -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Get-Attachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttachmentId** | **String**| ID of attachment | 

### Return type

[**AttachmentEntityDto**](AttachmentEntityDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AttachmentInfo"></a>
# **Get-AttachmentInfo**
> AttachmentMetaData Get-AttachmentInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Get email attachment metadata information

Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Get email attachment metadata information
try {
     $Result = Get-AttachmentInfo -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Get-AttachmentInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttachmentId** | **String**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Attachments"></a>
# **Get-Attachments**
> PageAttachmentEntity Get-Attachments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileNameFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SentEmailId] <PSCustomObject><br>

Get email attachments

Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index for list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$FileNameFilter = "FileNameFilter_example" # String | Optional file name and content type search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$InboxId = "InboxId_example" # String | Optional inboxId to filter attachments by (optional)
$EmailId = "EmailId_example" # String | Optional emailId to filter attachments by (optional)
$SentEmailId = "SentEmailId_example" # String | Optional sentEmailId to filter attachments by (optional)

# Get email attachments
try {
     $Result = Get-Attachments -Page $Page -Size $Size -Sort $Sort -FileNameFilter $FileNameFilter -Since $Since -Before $Before -InboxId $InboxId -EmailId $EmailId -SentEmailId $SentEmailId
} catch {
    Write-Host ("Exception occured when calling Get-Attachments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index for list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **FileNameFilter** | **String**| Optional file name and content type search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **InboxId** | [**String**](String)| Optional inboxId to filter attachments by | [optional] 
 **EmailId** | [**String**](String)| Optional emailId to filter attachments by | [optional] 
 **SentEmailId** | [**String**](String)| Optional sentEmailId to filter attachments by | [optional] 

### Return type

[**PageAttachmentEntity**](PageAttachmentEntity) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-UploadAttachment"></a>
# **Invoke-UploadAttachment**
> String[] Invoke-UploadAttachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UploadAttachmentOptions] <PSCustomObject><br>

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UploadAttachmentOptions = (Initialize-UploadAttachmentOptions -ContentId "ContentId_example" -ContentType "ContentType_example" -Filename "Filename_example" -Base64Contents "Base64Contents_example") # UploadAttachmentOptions | 

# Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
try {
     $Result = Invoke-UploadAttachment -UploadAttachmentOptions $UploadAttachmentOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-UploadAttachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UploadAttachmentOptions** | [**UploadAttachmentOptions**](UploadAttachmentOptions)|  | 

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-UploadAttachmentBytes"></a>
# **Invoke-UploadAttachmentBytes**
> String[] Invoke-UploadAttachmentBytes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType2] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filename] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileSize] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filename2] <String><br>

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ContentType = "ContentType_example" # String |  (optional)
$ContentType2 = "ContentType2_example" # String | Optional contentType for file. For instance `application/pdf` (optional)
$ContentId = "ContentId_example" # String | Optional content ID (CID) to save upload with (optional)
$Filename = "Filename_example" # String | Optional filename to save upload with (optional)
$FileSize = 987 # Int64 | Optional byte length to save upload with (optional)
$Filename2 = "Filename2_example" # String |  (optional)

# Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
try {
     $Result = Invoke-UploadAttachmentBytes -ContentType $ContentType -ContentType2 $ContentType2 -ContentId $ContentId -Filename $Filename -FileSize $FileSize -Filename2 $Filename2
} catch {
    Write-Host ("Exception occured when calling Invoke-UploadAttachmentBytes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContentType** | **String**|  | [optional] 
 **ContentType2** | **String**| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **ContentId** | **String**| Optional content ID (CID) to save upload with | [optional] 
 **Filename** | **String**| Optional filename to save upload with | [optional] 
 **FileSize** | **Int64**| Optional byte length to save upload with | [optional] 
 **Filename2** | **String**|  | [optional] 

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-UploadMultipartForm"></a>
# **Invoke-UploadMultipartForm**
> String[] Invoke-UploadMultipartForm<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filename] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentTypeHeader] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XFilename] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XFilenameRaw] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XFilesize] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineObject] <PSCustomObject><br>

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ContentId = "ContentId_example" # String | Optional content ID of attachment (optional)
$ContentType = "ContentType_example" # String | Optional content type of attachment (optional)
$Filename = "Filename_example" # String | Optional name of file (optional)
$ContentTypeHeader = "ContentTypeHeader_example" # String | Optional content type header of attachment (optional)
$XFilename = "XFilename_example" # String | Optional filename header of attachment (optional)
$XFilenameRaw = "XFilenameRaw_example" # String | Optional raw filename header of attachment that will be converted to punycode (optional)
$XFilesize = 987 # Int64 | Optional content size of attachment (optional)
$InlineObject = (Initialize-inline_object -File 123) # InlineObject |  (optional)

# Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
try {
     $Result = Invoke-UploadMultipartForm -ContentId $ContentId -ContentType $ContentType -Filename $Filename -ContentTypeHeader $ContentTypeHeader -XFilename $XFilename -XFilenameRaw $XFilenameRaw -XFilesize $XFilesize -InlineObject $InlineObject
} catch {
    Write-Host ("Exception occured when calling Invoke-UploadMultipartForm: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContentId** | **String**| Optional content ID of attachment | [optional] 
 **ContentType** | **String**| Optional content type of attachment | [optional] 
 **Filename** | **String**| Optional name of file | [optional] 
 **ContentTypeHeader** | **String**| Optional content type header of attachment | [optional] 
 **XFilename** | **String**| Optional filename header of attachment | [optional] 
 **XFilenameRaw** | **String**| Optional raw filename header of attachment that will be converted to punycode | [optional] 
 **XFilesize** | **Int64**| Optional content size of attachment | [optional] 
 **InlineObject** | [**InlineObject**](InlineObject)|  | [optional] 

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

