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

Tracking pixel

.PARAMETER Id
No description available.
.PARAMETER Seen
No description available.
.PARAMETER Recipient
No description available.
.PARAMETER Html
No description available.
.PARAMETER Url
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER SentEmailId
No description available.
.PARAMETER SeenAt
No description available.
.PARAMETER CreatedAt
No description available.
.OUTPUTS

TrackingPixelDto<PSCustomObject>
#>

function Initialize-TrackingPixelDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Seen},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Html},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentEmailId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${SeenAt},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => TrackingPixelDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Seen -eq $null) {
            throw "invalid value for 'Seen', 'Seen' cannot be null."
        }

        if ($Html -eq $null) {
            throw "invalid value for 'Html', 'Html' cannot be null."
        }

        if ($Url -eq $null) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "seen" = ${Seen}
            "recipient" = ${Recipient}
            "html" = ${Html}
            "url" = ${Url}
            "inboxId" = ${InboxId}
            "sentEmailId" = ${SentEmailId}
            "seenAt" = ${SeenAt}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TrackingPixelDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to TrackingPixelDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TrackingPixelDto<PSCustomObject>
#>
function ConvertFrom-JsonToTrackingPixelDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => TrackingPixelDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TrackingPixelDto
        $AllProperties = ("id", "seen", "recipient", "html", "url", "inboxId", "sentEmailId", "seenAt", "createdAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "seen"))) {
            throw "Error! JSON cannot be serialized due to the required property 'seen' missing."
        } else {
            $Seen = $JsonParameters.PSobject.Properties["seen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "html"))) {
            throw "Error! JSON cannot be serialized due to the required property 'html' missing."
        } else {
            $Html = $JsonParameters.PSobject.Properties["html"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) { #optional property not found
            $Recipient = $null
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentEmailId"))) { #optional property not found
            $SentEmailId = $null
        } else {
            $SentEmailId = $JsonParameters.PSobject.Properties["sentEmailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "seenAt"))) { #optional property not found
            $SeenAt = $null
        } else {
            $SeenAt = $JsonParameters.PSobject.Properties["seenAt"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "seen" = ${Seen}
            "recipient" = ${Recipient}
            "html" = ${Html}
            "url" = ${Url}
            "inboxId" = ${InboxId}
            "sentEmailId" = ${SentEmailId}
            "seenAt" = ${SeenAt}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

