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

Options for matching emails in an inbox. Each match option object contains a `field`, `should` and `value` property. Together they form logical conditions such as `SUBJECT` should `CONTAIN` value.

.PARAMETER Field
Fields of an email object that can be used to filter results
.PARAMETER Should
How the value of the email field specified should be compared to the value given in the match options.
.PARAMETER Value
The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed.
.OUTPUTS

MatchOption<PSCustomObject>
#>

function Initialize-MatchOption {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUBJECT", "TO", "BCC", "CC", "FROM")]
        [String]
        ${Field},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CONTAIN", "EQUAL")]
        [String]
        ${Should},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => MatchOption' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Field -eq $null) {
            throw "invalid value for 'Field', 'Field' cannot be null."
        }

        if ($Should -eq $null) {
            throw "invalid value for 'Should', 'Should' cannot be null."
        }

        if ($Value -eq $null) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "field" = ${Field}
            "should" = ${Should}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MatchOption<PSCustomObject>

.DESCRIPTION

Convert from JSON to MatchOption<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MatchOption<PSCustomObject>
#>
function ConvertFrom-JsonToMatchOption {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => MatchOption' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MatchOption
        $AllProperties = ("field", "should", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'field' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "field"))) {
            throw "Error! JSON cannot be serialized due to the required property 'field' missing."
        } else {
            $Field = $JsonParameters.PSobject.Properties["field"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "should"))) {
            throw "Error! JSON cannot be serialized due to the required property 'should' missing."
        } else {
            $Should = $JsonParameters.PSobject.Properties["should"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "field" = ${Field}
            "should" = ${Should}
            "value" = ${Value}
        }

        return $PSO
    }

}

