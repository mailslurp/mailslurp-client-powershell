#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Bounced recipient

.PARAMETER Id
No description available.
.PARAMETER UserId
No description available.
.PARAMETER SentEmailId
No description available.
.PARAMETER Recipient
No description available.
.PARAMETER DiagnosticCode
No description available.
.PARAMETER Action
No description available.
.PARAMETER BounceType
No description available.
.PARAMETER Status
No description available.
.PARAMETER CreatedAt
No description available.
.OUTPUTS

BouncedRecipientDto<PSCustomObject>
#>

function Initialize-BouncedRecipientDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentEmailId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiagnosticCode},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BounceType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => BouncedRecipientDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Recipient -eq $null) {
            throw "invalid value for 'Recipient', 'Recipient' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "sentEmailId" = ${SentEmailId}
            "recipient" = ${Recipient}
            "diagnosticCode" = ${DiagnosticCode}
            "action" = ${Action}
            "bounceType" = ${BounceType}
            "status" = ${Status}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BouncedRecipientDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to BouncedRecipientDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BouncedRecipientDto<PSCustomObject>
#>
function ConvertFrom-JsonToBouncedRecipientDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => BouncedRecipientDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BouncedRecipientDto
        $AllProperties = ("id", "userId", "sentEmailId", "recipient", "diagnosticCode", "action", "bounceType", "status", "createdAt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recipient' missing."
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentEmailId"))) { #optional property not found
            $SentEmailId = $null
        } else {
            $SentEmailId = $JsonParameters.PSobject.Properties["sentEmailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "diagnosticCode"))) { #optional property not found
            $DiagnosticCode = $null
        } else {
            $DiagnosticCode = $JsonParameters.PSobject.Properties["diagnosticCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceType"))) { #optional property not found
            $BounceType = $null
        } else {
            $BounceType = $JsonParameters.PSobject.Properties["bounceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "sentEmailId" = ${SentEmailId}
            "recipient" = ${Recipient}
            "diagnosticCode" = ${DiagnosticCode}
            "action" = ${Action}
            "bounceType" = ${BounceType}
            "status" = ${Status}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

