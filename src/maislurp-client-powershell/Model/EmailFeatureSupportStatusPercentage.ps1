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

No description available.

.PARAMETER Status
No description available.
.PARAMETER Percentage
No description available.
.OUTPUTS

EmailFeatureSupportStatusPercentage<PSCustomObject>
#>

function Initialize-EmailFeatureSupportStatusPercentage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUPPORTED", "PARTIAL", "NOT_SUPPORTED", "UNKNOWN")]
        [String]
        ${Status},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${Percentage}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailFeatureSupportStatusPercentage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Status -eq $null) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($Percentage -eq $null) {
            throw "invalid value for 'Percentage', 'Percentage' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "status" = ${Status}
            "percentage" = ${Percentage}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailFeatureSupportStatusPercentage<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailFeatureSupportStatusPercentage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailFeatureSupportStatusPercentage<PSCustomObject>
#>
function ConvertFrom-JsonToEmailFeatureSupportStatusPercentage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailFeatureSupportStatusPercentage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailFeatureSupportStatusPercentage
        $AllProperties = ("status", "percentage")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'status' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "percentage"))) {
            throw "Error! JSON cannot be serialized due to the required property 'percentage' missing."
        } else {
            $Percentage = $JsonParameters.PSobject.Properties["percentage"].value
        }

        $PSO = [PSCustomObject]@{
            "status" = ${Status}
            "percentage" = ${Percentage}
        }

        return $PSO
    }

}

