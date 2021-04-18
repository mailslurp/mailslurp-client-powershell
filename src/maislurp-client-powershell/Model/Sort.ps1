#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Empty
No description available.
.PARAMETER Sorted
No description available.
.PARAMETER Unsorted
No description available.
.OUTPUTS

Sort<PSCustomObject>
#>

function Initialize-Sort {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Empty},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Sorted},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Unsorted}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => Sort' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "empty" = ${Empty}
            "sorted" = ${Sorted}
            "unsorted" = ${Unsorted}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Sort<PSCustomObject>

.DESCRIPTION

Convert from JSON to Sort<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Sort<PSCustomObject>
#>
function ConvertFrom-JsonToSort {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => Sort' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Sort
        $AllProperties = ("empty", "sorted", "unsorted")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "empty"))) { #optional property not found
            $Empty = $null
        } else {
            $Empty = $JsonParameters.PSobject.Properties["empty"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sorted"))) { #optional property not found
            $Sorted = $null
        } else {
            $Sorted = $JsonParameters.PSobject.Properties["sorted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unsorted"))) { #optional property not found
            $Unsorted = $null
        } else {
            $Unsorted = $JsonParameters.PSobject.Properties["unsorted"].value
        }

        $PSO = [PSCustomObject]@{
            "empty" = ${Empty}
            "sorted" = ${Sorted}
            "unsorted" = ${Unsorted}
        }

        return $PSO
    }

}

