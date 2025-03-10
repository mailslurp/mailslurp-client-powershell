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

Result of validating a list of email addresses

.PARAMETER ValidEmailAddresses
No description available.
.PARAMETER InvalidEmailAddresses
No description available.
.PARAMETER ResultMapEmailAddressIsValid
No description available.
.OUTPUTS

ValidateEmailAddressListResult<PSCustomObject>
#>

function Initialize-ValidateEmailAddressListResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ValidEmailAddresses},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InvalidEmailAddresses},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ResultMapEmailAddressIsValid}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ValidateEmailAddressListResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($ValidEmailAddresses -eq $null) {
            throw "invalid value for 'ValidEmailAddresses', 'ValidEmailAddresses' cannot be null."
        }

        if ($InvalidEmailAddresses -eq $null) {
            throw "invalid value for 'InvalidEmailAddresses', 'InvalidEmailAddresses' cannot be null."
        }

        if ($ResultMapEmailAddressIsValid -eq $null) {
            throw "invalid value for 'ResultMapEmailAddressIsValid', 'ResultMapEmailAddressIsValid' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "validEmailAddresses" = ${ValidEmailAddresses}
            "invalidEmailAddresses" = ${InvalidEmailAddresses}
            "resultMapEmailAddressIsValid" = ${ResultMapEmailAddressIsValid}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidateEmailAddressListResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidateEmailAddressListResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidateEmailAddressListResult<PSCustomObject>
#>
function ConvertFrom-JsonToValidateEmailAddressListResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ValidateEmailAddressListResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ValidateEmailAddressListResult
        $AllProperties = ("validEmailAddresses", "invalidEmailAddresses", "resultMapEmailAddressIsValid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'validEmailAddresses' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validEmailAddresses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'validEmailAddresses' missing."
        } else {
            $ValidEmailAddresses = $JsonParameters.PSobject.Properties["validEmailAddresses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "invalidEmailAddresses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'invalidEmailAddresses' missing."
        } else {
            $InvalidEmailAddresses = $JsonParameters.PSobject.Properties["invalidEmailAddresses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resultMapEmailAddressIsValid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'resultMapEmailAddressIsValid' missing."
        } else {
            $ResultMapEmailAddressIsValid = $JsonParameters.PSobject.Properties["resultMapEmailAddressIsValid"].value
        }

        $PSO = [PSCustomObject]@{
            "validEmailAddresses" = ${ValidEmailAddresses}
            "invalidEmailAddresses" = ${InvalidEmailAddresses}
            "resultMapEmailAddressIsValid" = ${ResultMapEmailAddressIsValid}
        }

        return $PSO
    }

}

