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

Options for updating inbox properties

.PARAMETER Name
Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
.PARAMETER Description
Description of an inbox for labelling and searching purposes
.PARAMETER Tags
Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
.PARAMETER ExpiresAt
Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
.PARAMETER Favourite
Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
.OUTPUTS

UpdateInboxOptions<PSCustomObject>
#>

function Initialize-UpdateInboxOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Favourite}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UpdateInboxOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "tags" = ${Tags}
            "expiresAt" = ${ExpiresAt}
            "favourite" = ${Favourite}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateInboxOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateInboxOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateInboxOptions<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateInboxOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UpdateInboxOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateInboxOptions
        $AllProperties = ("name", "description", "tags", "expiresAt", "favourite")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "favourite"))) { #optional property not found
            $Favourite = $null
        } else {
            $Favourite = $JsonParameters.PSobject.Properties["favourite"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "tags" = ${Tags}
            "expiresAt" = ${ExpiresAt}
            "favourite" = ${Favourite}
        }

        return $PSO
    }

}

