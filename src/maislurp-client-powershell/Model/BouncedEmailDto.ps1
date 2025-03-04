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

Bounced email

.PARAMETER Id
No description available.
.PARAMETER UserId
No description available.
.PARAMETER NotificationType
No description available.
.PARAMETER SentToRecipients
No description available.
.PARAMETER VarSender
No description available.
.PARAMETER BounceMta
No description available.
.PARAMETER BounceType
No description available.
.PARAMETER BounceRecipients
No description available.
.PARAMETER BounceSubType
No description available.
.PARAMETER SentEmailId
No description available.
.PARAMETER Subject
No description available.
.PARAMETER CreatedAt
No description available.
.OUTPUTS

BouncedEmailDto<PSCustomObject>
#>

function Initialize-BouncedEmailDto {
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
        ${NotificationType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SentToRecipients},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarSender},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BounceMta},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BounceType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${BounceRecipients},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BounceSubType},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentEmailId},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => BouncedEmailDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($NotificationType -eq $null) {
            throw "invalid value for 'NotificationType', 'NotificationType' cannot be null."
        }

        if ($VarSender -eq $null) {
            throw "invalid value for 'VarSender', 'VarSender' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "notificationType" = ${NotificationType}
            "sentToRecipients" = ${SentToRecipients}
            "sender" = ${VarSender}
            "bounceMta" = ${BounceMta}
            "bounceType" = ${BounceType}
            "bounceRecipients" = ${BounceRecipients}
            "bounceSubType" = ${BounceSubType}
            "sentEmailId" = ${SentEmailId}
            "subject" = ${Subject}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BouncedEmailDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to BouncedEmailDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BouncedEmailDto<PSCustomObject>
#>
function ConvertFrom-JsonToBouncedEmailDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => BouncedEmailDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BouncedEmailDto
        $AllProperties = ("id", "userId", "notificationType", "sentToRecipients", "sender", "bounceMta", "bounceType", "bounceRecipients", "bounceSubType", "sentEmailId", "subject", "createdAt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notificationType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'notificationType' missing."
        } else {
            $NotificationType = $JsonParameters.PSobject.Properties["notificationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sender"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sender' missing."
        } else {
            $VarSender = $JsonParameters.PSobject.Properties["sender"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentToRecipients"))) { #optional property not found
            $SentToRecipients = $null
        } else {
            $SentToRecipients = $JsonParameters.PSobject.Properties["sentToRecipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceMta"))) { #optional property not found
            $BounceMta = $null
        } else {
            $BounceMta = $JsonParameters.PSobject.Properties["bounceMta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceType"))) { #optional property not found
            $BounceType = $null
        } else {
            $BounceType = $JsonParameters.PSobject.Properties["bounceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceRecipients"))) { #optional property not found
            $BounceRecipients = $null
        } else {
            $BounceRecipients = $JsonParameters.PSobject.Properties["bounceRecipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceSubType"))) { #optional property not found
            $BounceSubType = $null
        } else {
            $BounceSubType = $JsonParameters.PSobject.Properties["bounceSubType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentEmailId"))) { #optional property not found
            $SentEmailId = $null
        } else {
            $SentEmailId = $JsonParameters.PSobject.Properties["sentEmailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "notificationType" = ${NotificationType}
            "sentToRecipients" = ${SentToRecipients}
            "sender" = ${VarSender}
            "bounceMta" = ${BounceMta}
            "bounceType" = ${BounceType}
            "bounceRecipients" = ${BounceRecipients}
            "bounceSubType" = ${BounceSubType}
            "sentEmailId" = ${SentEmailId}
            "subject" = ${Subject}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

