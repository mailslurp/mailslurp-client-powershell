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

.PARAMETER Offset
No description available.
.PARAMETER Sort
No description available.
.PARAMETER Paged
No description available.
.PARAMETER Unpaged
No description available.
.PARAMETER PageNumber
No description available.
.PARAMETER PageSize
No description available.
.OUTPUTS

Pageable<PSCustomObject>
#>

function Initialize-Pageable {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Offset},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Sort},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Paged},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Unpaged},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PageNumber},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PageSize}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => Pageable' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "offset" = ${Offset}
            "sort" = ${Sort}
            "paged" = ${Paged}
            "unpaged" = ${Unpaged}
            "pageNumber" = ${PageNumber}
            "pageSize" = ${PageSize}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Pageable<PSCustomObject>

.DESCRIPTION

Convert from JSON to Pageable<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Pageable<PSCustomObject>
#>
function ConvertFrom-JsonToPageable {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => Pageable' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Pageable
        $AllProperties = ("offset", "sort", "paged", "unpaged", "pageNumber", "pageSize")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "offset"))) { #optional property not found
            $Offset = $null
        } else {
            $Offset = $JsonParameters.PSobject.Properties["offset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "paged"))) { #optional property not found
            $Paged = $null
        } else {
            $Paged = $JsonParameters.PSobject.Properties["paged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unpaged"))) { #optional property not found
            $Unpaged = $null
        } else {
            $Unpaged = $JsonParameters.PSobject.Properties["unpaged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageNumber"))) { #optional property not found
            $PageNumber = $null
        } else {
            $PageNumber = $JsonParameters.PSobject.Properties["pageNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageSize"))) { #optional property not found
            $PageSize = $null
        } else {
            $PageSize = $JsonParameters.PSobject.Properties["pageSize"].value
        }

        $PSO = [PSCustomObject]@{
            "offset" = ${Offset}
            "sort" = ${Sort}
            "paged" = ${Paged}
            "unpaged" = ${Unpaged}
            "pageNumber" = ${PageNumber}
            "pageSize" = ${PageSize}
        }

        return $PSO
    }

}

