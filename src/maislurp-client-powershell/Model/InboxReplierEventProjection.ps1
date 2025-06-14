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

Inbox replier event

.PARAMETER Recipients
No description available.
.PARAMETER EmailId
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER UserId
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER SentId
No description available.
.PARAMETER ReplierId
No description available.
.PARAMETER Message
No description available.
.PARAMETER Id
No description available.
.PARAMETER Status
No description available.
.OUTPUTS

InboxReplierEventProjection<PSCustomObject>
#>

function Initialize-InboxReplierEventProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Recipients},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplierId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "FAILURE")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxReplierEventProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "recipients" = ${Recipients}
            "emailId" = ${EmailId}
            "inboxId" = ${InboxId}
            "userId" = ${UserId}
            "createdAt" = ${CreatedAt}
            "sentId" = ${SentId}
            "replierId" = ${ReplierId}
            "message" = ${Message}
            "id" = ${Id}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxReplierEventProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxReplierEventProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxReplierEventProjection<PSCustomObject>
#>
function ConvertFrom-JsonToInboxReplierEventProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxReplierEventProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxReplierEventProjection
        $AllProperties = ("recipients", "emailId", "inboxId", "userId", "createdAt", "sentId", "replierId", "message", "id", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'createdAt' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) { #optional property not found
            $Recipients = $null
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailId"))) { #optional property not found
            $EmailId = $null
        } else {
            $EmailId = $JsonParameters.PSobject.Properties["emailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentId"))) { #optional property not found
            $SentId = $null
        } else {
            $SentId = $JsonParameters.PSobject.Properties["sentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replierId"))) { #optional property not found
            $ReplierId = $null
        } else {
            $ReplierId = $JsonParameters.PSobject.Properties["replierId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "recipients" = ${Recipients}
            "emailId" = ${EmailId}
            "inboxId" = ${InboxId}
            "userId" = ${UserId}
            "createdAt" = ${CreatedAt}
            "sentId" = ${SentId}
            "replierId" = ${ReplierId}
            "message" = ${Message}
            "id" = ${Id}
            "status" = ${Status}
        }

        return $PSO
    }

}

