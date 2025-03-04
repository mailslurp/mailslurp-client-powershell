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

JSONSchema for payload

.PARAMETER Value
No description available.
.OUTPUTS

JSONSchemaDto<PSCustomObject>
#>

function Initialize-JSONSchemaDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => JSONSchemaDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Value -eq $null) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JSONSchemaDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to JSONSchemaDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JSONSchemaDto<PSCustomObject>
#>
function ConvertFrom-JsonToJSONSchemaDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => JSONSchemaDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JSONSchemaDto
        $AllProperties = ("value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'value' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
        }

        return $PSO
    }

}

