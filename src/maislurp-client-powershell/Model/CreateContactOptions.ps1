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

.PARAMETER EmailAddresses
Set of email addresses belonging to the contact
.PARAMETER FirstName
No description available.
.PARAMETER GroupId
Group IDs that contact belongs to
.PARAMETER MetaData
No description available.
.PARAMETER OptOut
Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions.
.PARAMETER Tags
Tags that can be used to search and group contacts
.PARAMETER LastName
No description available.
.PARAMETER Company
No description available.
.OUTPUTS

CreateContactOptions<PSCustomObject>
#>

function Initialize-CreateContactOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EmailAddresses},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GroupId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MetaData},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${OptOut},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Company}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateContactOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "emailAddresses" = ${EmailAddresses}
            "firstName" = ${FirstName}
            "groupId" = ${GroupId}
            "metaData" = ${MetaData}
            "optOut" = ${OptOut}
            "tags" = ${Tags}
            "lastName" = ${LastName}
            "company" = ${Company}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateContactOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateContactOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateContactOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCreateContactOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateContactOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateContactOptions
        $AllProperties = ("emailAddresses", "firstName", "groupId", "metaData", "optOut", "tags", "lastName", "company")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddresses"))) { #optional property not found
            $EmailAddresses = $null
        } else {
            $EmailAddresses = $JsonParameters.PSobject.Properties["emailAddresses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupId"))) { #optional property not found
            $GroupId = $null
        } else {
            $GroupId = $JsonParameters.PSobject.Properties["groupId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "metaData"))) { #optional property not found
            $MetaData = $null
        } else {
            $MetaData = $JsonParameters.PSobject.Properties["metaData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "optOut"))) { #optional property not found
            $OptOut = $null
        } else {
            $OptOut = $JsonParameters.PSobject.Properties["optOut"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "company"))) { #optional property not found
            $Company = $null
        } else {
            $Company = $JsonParameters.PSobject.Properties["company"].value
        }

        $PSO = [PSCustomObject]@{
            "emailAddresses" = ${EmailAddresses}
            "firstName" = ${FirstName}
            "groupId" = ${GroupId}
            "metaData" = ${MetaData}
            "optOut" = ${OptOut}
            "tags" = ${Tags}
            "lastName" = ${LastName}
            "company" = ${Company}
        }

        return $PSO
    }

}

