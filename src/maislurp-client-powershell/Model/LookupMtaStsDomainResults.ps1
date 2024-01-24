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

No description available.

.PARAMETER Valid
No description available.
.PARAMETER Query
No description available.
.PARAMETER Records
No description available.
.PARAMETER WellKnownQuery
No description available.
.PARAMETER WellKnownPresent
No description available.
.PARAMETER WellKnownValue
No description available.
.PARAMETER Errors
No description available.
.PARAMETER Warnings
No description available.
.OUTPUTS

LookupMtaStsDomainResults<PSCustomObject>
#>

function Initialize-LookupMtaStsDomainResults {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Valid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Query},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Records},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WellKnownQuery},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${WellKnownPresent},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WellKnownValue},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Warnings}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => LookupMtaStsDomainResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Valid -eq $null) {
            throw "invalid value for 'Valid', 'Valid' cannot be null."
        }

        if ($Query -eq $null) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }

        if ($Records -eq $null) {
            throw "invalid value for 'Records', 'Records' cannot be null."
        }

        if ($WellKnownQuery -eq $null) {
            throw "invalid value for 'WellKnownQuery', 'WellKnownQuery' cannot be null."
        }

        if ($WellKnownPresent -eq $null) {
            throw "invalid value for 'WellKnownPresent', 'WellKnownPresent' cannot be null."
        }

        if ($WellKnownValue -eq $null) {
            throw "invalid value for 'WellKnownValue', 'WellKnownValue' cannot be null."
        }

        if ($Errors -eq $null) {
            throw "invalid value for 'Errors', 'Errors' cannot be null."
        }

        if ($Warnings -eq $null) {
            throw "invalid value for 'Warnings', 'Warnings' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "valid" = ${Valid}
            "query" = ${Query}
            "records" = ${Records}
            "wellKnownQuery" = ${WellKnownQuery}
            "wellKnownPresent" = ${WellKnownPresent}
            "wellKnownValue" = ${WellKnownValue}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LookupMtaStsDomainResults<PSCustomObject>

.DESCRIPTION

Convert from JSON to LookupMtaStsDomainResults<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LookupMtaStsDomainResults<PSCustomObject>
#>
function ConvertFrom-JsonToLookupMtaStsDomainResults {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => LookupMtaStsDomainResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LookupMtaStsDomainResults
        $AllProperties = ("valid", "query", "records", "wellKnownQuery", "wellKnownPresent", "wellKnownValue", "errors", "warnings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'valid' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'valid' missing."
        } else {
            $Valid = $JsonParameters.PSobject.Properties["valid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) {
            throw "Error! JSON cannot be serialized due to the required property 'query' missing."
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "records"))) {
            throw "Error! JSON cannot be serialized due to the required property 'records' missing."
        } else {
            $Records = $JsonParameters.PSobject.Properties["records"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wellKnownQuery"))) {
            throw "Error! JSON cannot be serialized due to the required property 'wellKnownQuery' missing."
        } else {
            $WellKnownQuery = $JsonParameters.PSobject.Properties["wellKnownQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wellKnownPresent"))) {
            throw "Error! JSON cannot be serialized due to the required property 'wellKnownPresent' missing."
        } else {
            $WellKnownPresent = $JsonParameters.PSobject.Properties["wellKnownPresent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wellKnownValue"))) {
            throw "Error! JSON cannot be serialized due to the required property 'wellKnownValue' missing."
        } else {
            $WellKnownValue = $JsonParameters.PSobject.Properties["wellKnownValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) {
            throw "Error! JSON cannot be serialized due to the required property 'errors' missing."
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warnings"))) {
            throw "Error! JSON cannot be serialized due to the required property 'warnings' missing."
        } else {
            $Warnings = $JsonParameters.PSobject.Properties["warnings"].value
        }

        $PSO = [PSCustomObject]@{
            "valid" = ${Valid}
            "query" = ${Query}
            "records" = ${Records}
            "wellKnownQuery" = ${WellKnownQuery}
            "wellKnownPresent" = ${WellKnownPresent}
            "wellKnownValue" = ${WellKnownValue}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
        }

        return $PSO
    }

}

