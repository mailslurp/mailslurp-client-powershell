#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Email attachment data

.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER UserId
No description available.
.PARAMETER ContentId
Content ID of attachment.
.PARAMETER AttachmentId
Attachment ID
.PARAMETER Name
No description available.
.PARAMETER ContentLength
Content length of attachment in bytes
.PARAMETER ContentType
Content type of attachment.
.OUTPUTS

AttachmentProjection<PSCustomObject>
#>

function Initialize-AttachmentProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttachmentId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ContentLength},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => AttachmentProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($AttachmentId -eq $null) {
            throw "invalid value for 'AttachmentId', 'AttachmentId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "userId" = ${UserId}
            "contentId" = ${ContentId}
            "attachmentId" = ${AttachmentId}
            "name" = ${Name}
            "contentLength" = ${ContentLength}
            "contentType" = ${ContentType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttachmentProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttachmentProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttachmentProjection<PSCustomObject>
#>
function ConvertFrom-JsonToAttachmentProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => AttachmentProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttachmentProjection
        $AllProperties = ("createdAt", "updatedAt", "userId", "contentId", "attachmentId", "name", "contentLength", "contentType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'createdAt' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachmentId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attachmentId' missing."
        } else {
            $AttachmentId = $JsonParameters.PSobject.Properties["attachmentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentId"))) { #optional property not found
            $ContentId = $null
        } else {
            $ContentId = $JsonParameters.PSobject.Properties["contentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentLength"))) { #optional property not found
            $ContentLength = $null
        } else {
            $ContentLength = $JsonParameters.PSobject.Properties["contentLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentType"))) { #optional property not found
            $ContentType = $null
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["contentType"].value
        }

        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "userId" = ${UserId}
            "contentId" = ${ContentId}
            "attachmentId" = ${AttachmentId}
            "name" = ${Name}
            "contentLength" = ${ContentLength}
            "contentType" = ${ContentType}
        }

        return $PSO
    }

}

