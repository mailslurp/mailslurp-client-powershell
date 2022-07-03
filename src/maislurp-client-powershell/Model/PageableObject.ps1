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

.PARAMETER Offset
No description available.
.PARAMETER Sort
No description available.
.PARAMETER PageNumber
No description available.
.PARAMETER PageSize
No description available.
.PARAMETER Paged
No description available.
.PARAMETER Unpaged
No description available.
.OUTPUTS

PageableObject<PSCustomObject>
#>

function Initialize-PageableObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Offset},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Sort},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PageNumber},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PageSize},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Paged},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Unpaged}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => PageableObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "offset" = ${Offset}
            "sort" = ${Sort}
            "pageNumber" = ${PageNumber}
            "pageSize" = ${PageSize}
            "paged" = ${Paged}
            "unpaged" = ${Unpaged}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PageableObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to PageableObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PageableObject<PSCustomObject>
#>
function ConvertFrom-JsonToPageableObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => PageableObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PageableObject
        $AllProperties = ("offset", "sort", "pageNumber", "pageSize", "paged", "unpaged")
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

        $PSO = [PSCustomObject]@{
            "offset" = ${Offset}
            "sort" = ${Sort}
            "pageNumber" = ${PageNumber}
            "pageSize" = ${PageSize}
            "paged" = ${Paged}
            "unpaged" = ${Unpaged}
        }

        return $PSO
    }

}

