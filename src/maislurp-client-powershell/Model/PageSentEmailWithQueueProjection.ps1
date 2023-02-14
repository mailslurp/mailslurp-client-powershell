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

Paginated sent email results for emails sent with queue. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls.

.PARAMETER Content
Collection of items
.PARAMETER Pageable
No description available.
.PARAMETER Total
No description available.
.PARAMETER Size
Size of page requested
.PARAMETER Number
Page number starting at 0
.PARAMETER TotalPages
Total number of pages available
.PARAMETER NumberOfElements
Number of items returned
.PARAMETER TotalElements
Total number of items available for querying
.PARAMETER Last
No description available.
.PARAMETER Sort
No description available.
.PARAMETER First
No description available.
.PARAMETER Empty
No description available.
.OUTPUTS

PageSentEmailWithQueueProjection<PSCustomObject>
#>

function Initialize-PageSentEmailWithQueueProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Content},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Pageable},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Total},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Size},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Number},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${TotalPages},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NumberOfElements},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${TotalElements},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Last},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Sort},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${First},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Empty}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => PageSentEmailWithQueueProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Content -eq $null) {
            throw "invalid value for 'Content', 'Content' cannot be null."
        }

        if ($Size -eq $null) {
            throw "invalid value for 'Size', 'Size' cannot be null."
        }

        if ($Number -eq $null) {
            throw "invalid value for 'Number', 'Number' cannot be null."
        }

        if ($TotalPages -eq $null) {
            throw "invalid value for 'TotalPages', 'TotalPages' cannot be null."
        }

        if ($NumberOfElements -eq $null) {
            throw "invalid value for 'NumberOfElements', 'NumberOfElements' cannot be null."
        }

        if ($TotalElements -eq $null) {
            throw "invalid value for 'TotalElements', 'TotalElements' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "content" = ${Content}
            "pageable" = ${Pageable}
            "total" = ${Total}
            "size" = ${Size}
            "number" = ${Number}
            "totalPages" = ${TotalPages}
            "numberOfElements" = ${NumberOfElements}
            "totalElements" = ${TotalElements}
            "last" = ${Last}
            "sort" = ${Sort}
            "first" = ${First}
            "empty" = ${Empty}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PageSentEmailWithQueueProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to PageSentEmailWithQueueProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PageSentEmailWithQueueProjection<PSCustomObject>
#>
function ConvertFrom-JsonToPageSentEmailWithQueueProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => PageSentEmailWithQueueProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PageSentEmailWithQueueProjection
        $AllProperties = ("content", "pageable", "total", "size", "number", "totalPages", "numberOfElements", "totalElements", "last", "sort", "first", "empty")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'content' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) {
            throw "Error! JSON cannot be serialized due to the required property 'content' missing."
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) {
            throw "Error! JSON cannot be serialized due to the required property 'size' missing."
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "number"))) {
            throw "Error! JSON cannot be serialized due to the required property 'number' missing."
        } else {
            $Number = $JsonParameters.PSobject.Properties["number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalPages"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalPages' missing."
        } else {
            $TotalPages = $JsonParameters.PSobject.Properties["totalPages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfElements"))) {
            throw "Error! JSON cannot be serialized due to the required property 'numberOfElements' missing."
        } else {
            $NumberOfElements = $JsonParameters.PSobject.Properties["numberOfElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalElements"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalElements' missing."
        } else {
            $TotalElements = $JsonParameters.PSobject.Properties["totalElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageable"))) { #optional property not found
            $Pageable = $null
        } else {
            $Pageable = $JsonParameters.PSobject.Properties["pageable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last"))) { #optional property not found
            $Last = $null
        } else {
            $Last = $JsonParameters.PSobject.Properties["last"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "first"))) { #optional property not found
            $First = $null
        } else {
            $First = $JsonParameters.PSobject.Properties["first"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "empty"))) { #optional property not found
            $Empty = $null
        } else {
            $Empty = $JsonParameters.PSobject.Properties["empty"].value
        }

        $PSO = [PSCustomObject]@{
            "content" = ${Content}
            "pageable" = ${Pageable}
            "total" = ${Total}
            "size" = ${Size}
            "number" = ${Number}
            "totalPages" = ${TotalPages}
            "numberOfElements" = ${NumberOfElements}
            "totalElements" = ${TotalElements}
            "last" = ${Last}
            "sort" = ${Sort}
            "first" = ${First}
            "empty" = ${Empty}
        }

        return $PSO
    }

}

