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

.PARAMETER Count
No description available.
.OUTPUTS

UnseenErrorCountDto<PSCustomObject>
#>

function Initialize-UnseenErrorCountDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Count}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UnseenErrorCountDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Count -eq $null) {
            throw "invalid value for 'Count', 'Count' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "count" = ${Count}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UnseenErrorCountDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to UnseenErrorCountDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UnseenErrorCountDto<PSCustomObject>
#>
function ConvertFrom-JsonToUnseenErrorCountDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UnseenErrorCountDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UnseenErrorCountDto
        $AllProperties = ("count")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'count' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) {
            throw "Error! JSON cannot be serialized due to the required property 'count' missing."
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        $PSO = [PSCustomObject]@{
            "count" = ${Count}
        }

        return $PSO
    }

}

