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

Paginated inbox results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.

.PARAMETER Content
No description available.
.PARAMETER Pageable
No description available.
.PARAMETER TotalElements
No description available.
.PARAMETER TotalPages
No description available.
.PARAMETER Last
No description available.
.PARAMETER NumberOfElements
No description available.
.PARAMETER First
No description available.
.PARAMETER Size
No description available.
.PARAMETER Number
No description available.
.PARAMETER Sort
No description available.
.PARAMETER Empty
No description available.
.OUTPUTS

PageInboxProjection<PSCustomObject>
#>

function Initialize-PageInboxProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Content},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Pageable},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${TotalElements},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${TotalPages},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Last},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfElements},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${First},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Number},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Sort},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Empty}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => PageInboxProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($TotalElements -eq $null) {
            throw "invalid value for 'TotalElements', 'TotalElements' cannot be null."
        }

        if ($TotalPages -eq $null) {
            throw "invalid value for 'TotalPages', 'TotalPages' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "content" = ${Content}
            "pageable" = ${Pageable}
            "totalElements" = ${TotalElements}
            "totalPages" = ${TotalPages}
            "last" = ${Last}
            "numberOfElements" = ${NumberOfElements}
            "first" = ${First}
            "size" = ${Size}
            "number" = ${Number}
            "sort" = ${Sort}
            "empty" = ${Empty}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PageInboxProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to PageInboxProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PageInboxProjection<PSCustomObject>
#>
function ConvertFrom-JsonToPageInboxProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => PageInboxProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PageInboxProjection
        $AllProperties = ("content", "pageable", "totalElements", "totalPages", "last", "numberOfElements", "first", "size", "number", "sort", "empty")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'totalElements' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalElements"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalElements' missing."
        } else {
            $TotalElements = $JsonParameters.PSobject.Properties["totalElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalPages"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalPages' missing."
        } else {
            $TotalPages = $JsonParameters.PSobject.Properties["totalPages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) { #optional property not found
            $Content = $null
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageable"))) { #optional property not found
            $Pageable = $null
        } else {
            $Pageable = $JsonParameters.PSobject.Properties["pageable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last"))) { #optional property not found
            $Last = $null
        } else {
            $Last = $JsonParameters.PSobject.Properties["last"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfElements"))) { #optional property not found
            $NumberOfElements = $null
        } else {
            $NumberOfElements = $JsonParameters.PSobject.Properties["numberOfElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "first"))) { #optional property not found
            $First = $null
        } else {
            $First = $JsonParameters.PSobject.Properties["first"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "number"))) { #optional property not found
            $Number = $null
        } else {
            $Number = $JsonParameters.PSobject.Properties["number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "empty"))) { #optional property not found
            $Empty = $null
        } else {
            $Empty = $JsonParameters.PSobject.Properties["empty"].value
        }

        $PSO = [PSCustomObject]@{
            "content" = ${Content}
            "pageable" = ${Pageable}
            "totalElements" = ${TotalElements}
            "totalPages" = ${TotalPages}
            "last" = ${Last}
            "numberOfElements" = ${NumberOfElements}
            "first" = ${First}
            "size" = ${Size}
            "number" = ${Number}
            "sort" = ${Sort}
            "empty" = ${Empty}
        }

        return $PSO
    }

}

