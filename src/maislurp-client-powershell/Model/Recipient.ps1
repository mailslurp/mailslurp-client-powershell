#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER RawValue
No description available.
.PARAMETER EmailAddress
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

Recipient<PSCustomObject>
#>

function Initialize-Recipient {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RawValue},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => Recipient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($RawValue -eq $null) {
            throw "invalid value for 'RawValue', 'RawValue' cannot be null."
        }

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "rawValue" = ${RawValue}
            "emailAddress" = ${EmailAddress}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Recipient<PSCustomObject>

.DESCRIPTION

Convert from JSON to Recipient<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Recipient<PSCustomObject>
#>
function ConvertFrom-JsonToRecipient {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => Recipient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Recipient
        $AllProperties = ("rawValue", "emailAddress", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'rawValue' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rawValue"))) {
            throw "Error! JSON cannot be serialized due to the required property 'rawValue' missing."
        } else {
            $RawValue = $JsonParameters.PSobject.Properties["rawValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddress' missing."
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "rawValue" = ${RawValue}
            "emailAddress" = ${EmailAddress}
            "name" = ${Name}
        }

        return $PSO
    }

}

