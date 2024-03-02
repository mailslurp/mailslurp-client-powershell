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

Options for validating a list of email addresses

.PARAMETER EmailAddressList
No description available.
.PARAMETER IgnoreOldResults
No description available.
.OUTPUTS

ValidateEmailAddressListOptions<PSCustomObject>
#>

function Initialize-ValidateEmailAddressListOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EmailAddressList},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IgnoreOldResults}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ValidateEmailAddressListOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($EmailAddressList -eq $null) {
            throw "invalid value for 'EmailAddressList', 'EmailAddressList' cannot be null."
        }

        if ($EmailAddressList.length -gt 50) {
            throw "invalid value for 'EmailAddressList', number of items must be less than or equal to 50."
        }

        if ($EmailAddressList.length -lt 1) {
            throw "invalid value for 'EmailAddressList', number of items must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "emailAddressList" = ${EmailAddressList}
            "ignoreOldResults" = ${IgnoreOldResults}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidateEmailAddressListOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidateEmailAddressListOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidateEmailAddressListOptions<PSCustomObject>
#>
function ConvertFrom-JsonToValidateEmailAddressListOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ValidateEmailAddressListOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ValidateEmailAddressListOptions
        $AllProperties = ("emailAddressList", "ignoreOldResults")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'emailAddressList' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddressList"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddressList' missing."
        } else {
            $EmailAddressList = $JsonParameters.PSobject.Properties["emailAddressList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ignoreOldResults"))) { #optional property not found
            $IgnoreOldResults = $null
        } else {
            $IgnoreOldResults = $JsonParameters.PSobject.Properties["ignoreOldResults"].value
        }

        $PSO = [PSCustomObject]@{
            "emailAddressList" = ${EmailAddressList}
            "ignoreOldResults" = ${IgnoreOldResults}
        }

        return $PSO
    }

}

