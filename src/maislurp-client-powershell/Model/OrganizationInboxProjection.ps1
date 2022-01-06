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

.PARAMETER Id
ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
.PARAMETER CreatedAt
When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
.PARAMETER Name
Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
.PARAMETER EmailAddress
The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
.PARAMETER Favourite
Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
.PARAMETER Tags
Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
.PARAMETER TeamAccess
Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/
.PARAMETER InboxType
Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
.PARAMETER ReadOnly
Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
.OUTPUTS

OrganizationInboxProjection<PSCustomObject>
#>

function Initialize-OrganizationInboxProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Favourite},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TeamAccess},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HTTP_INBOX", "SMTP_INBOX")]
        [String]
        ${InboxType},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ReadOnly}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => OrganizationInboxProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "createdAt" = ${CreatedAt}
            "name" = ${Name}
            "emailAddress" = ${EmailAddress}
            "favourite" = ${Favourite}
            "tags" = ${Tags}
            "teamAccess" = ${TeamAccess}
            "inboxType" = ${InboxType}
            "readOnly" = ${ReadOnly}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrganizationInboxProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrganizationInboxProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrganizationInboxProjection<PSCustomObject>
#>
function ConvertFrom-JsonToOrganizationInboxProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => OrganizationInboxProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrganizationInboxProjection
        $AllProperties = ("id", "createdAt", "name", "emailAddress", "favourite", "tags", "teamAccess", "inboxType", "readOnly")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "favourite"))) { #optional property not found
            $Favourite = $null
        } else {
            $Favourite = $JsonParameters.PSobject.Properties["favourite"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "teamAccess"))) { #optional property not found
            $TeamAccess = $null
        } else {
            $TeamAccess = $JsonParameters.PSobject.Properties["teamAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxType"))) { #optional property not found
            $InboxType = $null
        } else {
            $InboxType = $JsonParameters.PSobject.Properties["inboxType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "readOnly"))) { #optional property not found
            $ReadOnly = $null
        } else {
            $ReadOnly = $JsonParameters.PSobject.Properties["readOnly"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "createdAt" = ${CreatedAt}
            "name" = ${Name}
            "emailAddress" = ${EmailAddress}
            "favourite" = ${Favourite}
            "tags" = ${Tags}
            "teamAccess" = ${TeamAccess}
            "inboxType" = ${InboxType}
            "readOnly" = ${ReadOnly}
        }

        return $PSO
    }

}

