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

.PARAMETER Version
No description available.
.PARAMETER SupportFlags
No description available.
.OUTPUTS

EmailFeatureVersionStatistics<PSCustomObject>
#>

function Initialize-EmailFeatureVersionStatistics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SupportFlags}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailFeatureVersionStatistics' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Version -eq $null) {
            throw "invalid value for 'Version', 'Version' cannot be null."
        }

        if ($SupportFlags -eq $null) {
            throw "invalid value for 'SupportFlags', 'SupportFlags' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "supportFlags" = ${SupportFlags}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailFeatureVersionStatistics<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailFeatureVersionStatistics<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailFeatureVersionStatistics<PSCustomObject>
#>
function ConvertFrom-JsonToEmailFeatureVersionStatistics {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailFeatureVersionStatistics' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailFeatureVersionStatistics
        $AllProperties = ("version", "supportFlags")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'version' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) {
            throw "Error! JSON cannot be serialized due to the required property 'version' missing."
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "supportFlags"))) {
            throw "Error! JSON cannot be serialized due to the required property 'supportFlags' missing."
        } else {
            $SupportFlags = $JsonParameters.PSobject.Properties["supportFlags"].value
        }

        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "supportFlags" = ${SupportFlags}
        }

        return $PSO
    }

}

