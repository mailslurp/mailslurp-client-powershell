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

.PARAMETER Family
No description available.
.PARAMETER Platform
No description available.
.PARAMETER Category
No description available.
.OUTPUTS

EmailFeatureNames<PSCustomObject>
#>

function Initialize-EmailFeatureNames {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Family},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Platform},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Category}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailFeatureNames' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Family -eq $null) {
            throw "invalid value for 'Family', 'Family' cannot be null."
        }

        if ($Platform -eq $null) {
            throw "invalid value for 'Platform', 'Platform' cannot be null."
        }

        if ($Category -eq $null) {
            throw "invalid value for 'Category', 'Category' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "family" = ${Family}
            "platform" = ${Platform}
            "category" = ${Category}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailFeatureNames<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailFeatureNames<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailFeatureNames<PSCustomObject>
#>
function ConvertFrom-JsonToEmailFeatureNames {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailFeatureNames' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailFeatureNames
        $AllProperties = ("family", "platform", "category")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'family' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "family"))) {
            throw "Error! JSON cannot be serialized due to the required property 'family' missing."
        } else {
            $Family = $JsonParameters.PSobject.Properties["family"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) {
            throw "Error! JSON cannot be serialized due to the required property 'platform' missing."
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "category"))) {
            throw "Error! JSON cannot be serialized due to the required property 'category' missing."
        } else {
            $Category = $JsonParameters.PSobject.Properties["category"].value
        }

        $PSO = [PSCustomObject]@{
            "family" = ${Family}
            "platform" = ${Platform}
            "category" = ${Category}
        }

        return $PSO
    }

}

