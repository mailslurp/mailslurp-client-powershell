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

Options for exporting user data

.PARAMETER OutputFormat
No description available.
.PARAMETER ExcludePreviouslyExported
No description available.
.PARAMETER CreatedEarliestTime
No description available.
.PARAMETER CreatedOldestTime
No description available.
.PARAMETER VarFilter
No description available.
.PARAMETER ListSeparatorToken
No description available.
.OUTPUTS

ExportOptions<PSCustomObject>
#>

function Initialize-ExportOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CSV_DEFAULT", "CSV_EXCEL")]
        [String]
        ${OutputFormat},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExcludePreviouslyExported},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedEarliestTime},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedOldestTime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFilter},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ListSeparatorToken}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ExportOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($OutputFormat -eq $null) {
            throw "invalid value for 'OutputFormat', 'OutputFormat' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "outputFormat" = ${OutputFormat}
            "excludePreviouslyExported" = ${ExcludePreviouslyExported}
            "createdEarliestTime" = ${CreatedEarliestTime}
            "createdOldestTime" = ${CreatedOldestTime}
            "filter" = ${VarFilter}
            "listSeparatorToken" = ${ListSeparatorToken}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExportOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExportOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExportOptions<PSCustomObject>
#>
function ConvertFrom-JsonToExportOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ExportOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ExportOptions
        $AllProperties = ("outputFormat", "excludePreviouslyExported", "createdEarliestTime", "createdOldestTime", "filter", "listSeparatorToken")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'outputFormat' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputFormat"))) {
            throw "Error! JSON cannot be serialized due to the required property 'outputFormat' missing."
        } else {
            $OutputFormat = $JsonParameters.PSobject.Properties["outputFormat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "excludePreviouslyExported"))) { #optional property not found
            $ExcludePreviouslyExported = $null
        } else {
            $ExcludePreviouslyExported = $JsonParameters.PSobject.Properties["excludePreviouslyExported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdEarliestTime"))) { #optional property not found
            $CreatedEarliestTime = $null
        } else {
            $CreatedEarliestTime = $JsonParameters.PSobject.Properties["createdEarliestTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdOldestTime"))) { #optional property not found
            $CreatedOldestTime = $null
        } else {
            $CreatedOldestTime = $JsonParameters.PSobject.Properties["createdOldestTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "listSeparatorToken"))) { #optional property not found
            $ListSeparatorToken = $null
        } else {
            $ListSeparatorToken = $JsonParameters.PSobject.Properties["listSeparatorToken"].value
        }

        $PSO = [PSCustomObject]@{
            "outputFormat" = ${OutputFormat}
            "excludePreviouslyExported" = ${ExcludePreviouslyExported}
            "createdEarliestTime" = ${CreatedEarliestTime}
            "createdOldestTime" = ${CreatedOldestTime}
            "filter" = ${VarFilter}
            "listSeparatorToken" = ${ListSeparatorToken}
        }

        return $PSO
    }

}

