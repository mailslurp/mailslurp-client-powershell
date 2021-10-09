#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Hash
No description available.
.PARAMETER Url
No description available.
.OUTPUTS

GravatarUrl<PSCustomObject>
#>

function Initialize-GravatarUrl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hash},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => GravatarUrl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Hash -eq $null) {
            throw "invalid value for 'Hash', 'Hash' cannot be null."
        }

        if ($Url -eq $null) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "hash" = ${Hash}
            "url" = ${Url}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GravatarUrl<PSCustomObject>

.DESCRIPTION

Convert from JSON to GravatarUrl<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GravatarUrl<PSCustomObject>
#>
function ConvertFrom-JsonToGravatarUrl {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => GravatarUrl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GravatarUrl
        $AllProperties = ("hash", "url")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'hash' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hash"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hash' missing."
        } else {
            $Hash = $JsonParameters.PSobject.Properties["hash"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        $PSO = [PSCustomObject]@{
            "hash" = ${Hash}
            "url" = ${Url}
        }

        return $PSO
    }

}

