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

.PARAMETER Result
No description available.
.OUTPUTS

StructuredContentResultDto<PSCustomObject>
#>

function Initialize-StructuredContentResultDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Result}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => StructuredContentResultDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Result -eq $null) {
            throw "invalid value for 'Result', 'Result' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "result" = ${Result}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StructuredContentResultDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to StructuredContentResultDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StructuredContentResultDto<PSCustomObject>
#>
function ConvertFrom-JsonToStructuredContentResultDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => StructuredContentResultDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in StructuredContentResultDto
        $AllProperties = ("result")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'result' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) {
            throw "Error! JSON cannot be serialized due to the required property 'result' missing."
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        $PSO = [PSCustomObject]@{
            "result" = ${Result}
        }

        return $PSO
    }

}

