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

.PARAMETER PhoneCountry
No description available.
.PARAMETER AvailabilityStatus
No description available.
.OUTPUTS

PhonePlanAvailabilityItem<PSCustomObject>
#>

function Initialize-PhonePlanAvailabilityItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("US", "GB", "AU")]
        [String]
        ${PhoneCountry},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("AVAILABLE", "NON_MATCHING_SUBSCRIPTION_CURRENCY", "NON_MATCHING_SUBSCRIPTION_TYPE", "ALREADY_ASSIGNED")]
        [String]
        ${AvailabilityStatus}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => PhonePlanAvailabilityItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($PhoneCountry -eq $null) {
            throw "invalid value for 'PhoneCountry', 'PhoneCountry' cannot be null."
        }

        if ($AvailabilityStatus -eq $null) {
            throw "invalid value for 'AvailabilityStatus', 'AvailabilityStatus' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "phoneCountry" = ${PhoneCountry}
            "availabilityStatus" = ${AvailabilityStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PhonePlanAvailabilityItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to PhonePlanAvailabilityItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PhonePlanAvailabilityItem<PSCustomObject>
#>
function ConvertFrom-JsonToPhonePlanAvailabilityItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => PhonePlanAvailabilityItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PhonePlanAvailabilityItem
        $AllProperties = ("phoneCountry", "availabilityStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'phoneCountry' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phoneCountry"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phoneCountry' missing."
        } else {
            $PhoneCountry = $JsonParameters.PSobject.Properties["phoneCountry"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "availabilityStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'availabilityStatus' missing."
        } else {
            $AvailabilityStatus = $JsonParameters.PSobject.Properties["availabilityStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "phoneCountry" = ${PhoneCountry}
            "availabilityStatus" = ${AvailabilityStatus}
        }

        return $PSO
    }

}

