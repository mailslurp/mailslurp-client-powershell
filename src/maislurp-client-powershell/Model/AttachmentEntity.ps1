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

No description available.

.PARAMETER Id
No description available.
.PARAMETER AttachmentId
No description available.
.PARAMETER Bucket
No description available.
.PARAMETER UserId
No description available.
.PARAMETER ContentType
No description available.
.PARAMETER ContentLength
No description available.
.PARAMETER ContentId
No description available.
.PARAMETER Name
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.OUTPUTS

AttachmentEntity<PSCustomObject>
#>

function Initialize-AttachmentEntity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttachmentId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Bucket},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ContentLength},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => AttachmentEntity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($AttachmentId -eq $null) {
            throw "invalid value for 'AttachmentId', 'AttachmentId' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "attachmentId" = ${AttachmentId}
            "bucket" = ${Bucket}
            "userId" = ${UserId}
            "contentType" = ${ContentType}
            "contentLength" = ${ContentLength}
            "contentId" = ${ContentId}
            "name" = ${Name}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttachmentEntity<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttachmentEntity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttachmentEntity<PSCustomObject>
#>
function ConvertFrom-JsonToAttachmentEntity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => AttachmentEntity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttachmentEntity
        $AllProperties = ("id", "attachmentId", "bucket", "userId", "contentType", "contentLength", "contentId", "name", "createdAt", "updatedAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'attachmentId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachmentId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attachmentId' missing."
        } else {
            $AttachmentId = $JsonParameters.PSobject.Properties["attachmentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bucket"))) { #optional property not found
            $Bucket = $null
        } else {
            $Bucket = $JsonParameters.PSobject.Properties["bucket"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentType"))) { #optional property not found
            $ContentType = $null
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["contentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentLength"))) { #optional property not found
            $ContentLength = $null
        } else {
            $ContentLength = $JsonParameters.PSobject.Properties["contentLength"].value
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "attachmentId" = ${AttachmentId}
            "bucket" = ${Bucket}
            "userId" = ${UserId}
            "contentType" = ${ContentType}
            "contentLength" = ${ContentLength}
            "contentId" = ${ContentId}
            "name" = ${Name}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }

        return $PSO
    }

}

