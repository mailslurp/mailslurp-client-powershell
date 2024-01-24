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

.PARAMETER InboxIds
Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
.PARAMETER PageIndex
Optional page index in email list pagination
.PARAMETER PageSize
Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
.PARAMETER SortDirection
Optional createdAt sort direction ASC or DESC
.PARAMETER UnreadOnly
Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
.PARAMETER SearchFilter
Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
.PARAMETER Since
Optional filter emails received after given date time
.PARAMETER Before
Optional filter emails received before given date time
.OUTPUTS

SearchEmailsOptions<PSCustomObject>
#>

function Initialize-SearchEmailsOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InboxIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PageIndex},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PageSize},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${SortDirection},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UnreadOnly},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchFilter},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Before}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SearchEmailsOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($PageSize -and $PageSize -gt 100) {
          throw "invalid value for 'PageSize', must be smaller than or equal to 100."
        }


        $PSO = [PSCustomObject]@{
            "inboxIds" = ${InboxIds}
            "pageIndex" = ${PageIndex}
            "pageSize" = ${PageSize}
            "sortDirection" = ${SortDirection}
            "unreadOnly" = ${UnreadOnly}
            "searchFilter" = ${SearchFilter}
            "since" = ${Since}
            "before" = ${Before}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchEmailsOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchEmailsOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchEmailsOptions<PSCustomObject>
#>
function ConvertFrom-JsonToSearchEmailsOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SearchEmailsOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SearchEmailsOptions
        $AllProperties = ("inboxIds", "pageIndex", "pageSize", "sortDirection", "unreadOnly", "searchFilter", "since", "before")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxIds"))) { #optional property not found
            $InboxIds = $null
        } else {
            $InboxIds = $JsonParameters.PSobject.Properties["inboxIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageIndex"))) { #optional property not found
            $PageIndex = $null
        } else {
            $PageIndex = $JsonParameters.PSobject.Properties["pageIndex"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageSize"))) { #optional property not found
            $PageSize = $null
        } else {
            $PageSize = $JsonParameters.PSobject.Properties["pageSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sortDirection"))) { #optional property not found
            $SortDirection = $null
        } else {
            $SortDirection = $JsonParameters.PSobject.Properties["sortDirection"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unreadOnly"))) { #optional property not found
            $UnreadOnly = $null
        } else {
            $UnreadOnly = $JsonParameters.PSobject.Properties["unreadOnly"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchFilter"))) { #optional property not found
            $SearchFilter = $null
        } else {
            $SearchFilter = $JsonParameters.PSobject.Properties["searchFilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "since"))) { #optional property not found
            $Since = $null
        } else {
            $Since = $JsonParameters.PSobject.Properties["since"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "before"))) { #optional property not found
            $Before = $null
        } else {
            $Before = $JsonParameters.PSobject.Properties["before"].value
        }

        $PSO = [PSCustomObject]@{
            "inboxIds" = ${InboxIds}
            "pageIndex" = ${PageIndex}
            "pageSize" = ${PageSize}
            "sortDirection" = ${SortDirection}
            "unreadOnly" = ${UnreadOnly}
            "searchFilter" = ${SearchFilter}
            "since" = ${Since}
            "before" = ${Before}
        }

        return $PSO
    }

}
