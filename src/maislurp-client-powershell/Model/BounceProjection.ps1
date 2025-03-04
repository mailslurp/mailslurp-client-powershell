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

Bounced email event

.PARAMETER Subject
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER VarSender
No description available.
.PARAMETER BounceType
No description available.
.PARAMETER BounceMta
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

BounceProjection<PSCustomObject>
#>

function Initialize-BounceProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarSender},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BounceType},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BounceMta},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => BounceProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($VarSender -eq $null) {
            throw "invalid value for 'VarSender', 'VarSender' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "subject" = ${Subject}
            "createdAt" = ${CreatedAt}
            "sender" = ${VarSender}
            "bounceType" = ${BounceType}
            "bounceMta" = ${BounceMta}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BounceProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to BounceProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BounceProjection<PSCustomObject>
#>
function ConvertFrom-JsonToBounceProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => BounceProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BounceProjection
        $AllProperties = ("subject", "createdAt", "sender", "bounceType", "bounceMta", "id")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sender"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sender' missing."
        } else {
            $VarSender = $JsonParameters.PSobject.Properties["sender"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceType"))) { #optional property not found
            $BounceType = $null
        } else {
            $BounceType = $JsonParameters.PSobject.Properties["bounceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bounceMta"))) { #optional property not found
            $BounceMta = $null
        } else {
            $BounceMta = $JsonParameters.PSobject.Properties["bounceMta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "subject" = ${Subject}
            "createdAt" = ${CreatedAt}
            "sender" = ${VarSender}
            "bounceType" = ${BounceType}
            "bounceMta" = ${BounceMta}
            "id" = ${Id}
        }

        return $PSO
    }

}

