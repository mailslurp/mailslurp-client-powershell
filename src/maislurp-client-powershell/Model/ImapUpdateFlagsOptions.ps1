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

No description available.

.PARAMETER Operation
No description available.
.PARAMETER Flags
No description available.
.PARAMETER UidSet
No description available.
.PARAMETER SeqSet
No description available.
.OUTPUTS

ImapUpdateFlagsOptions<PSCustomObject>
#>

function Initialize-ImapUpdateFlagsOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operation},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Flags},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UidSet},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SeqSet}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ImapUpdateFlagsOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Operation -eq $null) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "flags" = ${Flags}
            "uidSet" = ${UidSet}
            "seqSet" = ${SeqSet}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImapUpdateFlagsOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImapUpdateFlagsOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImapUpdateFlagsOptions<PSCustomObject>
#>
function ConvertFrom-JsonToImapUpdateFlagsOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ImapUpdateFlagsOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ImapUpdateFlagsOptions
        $AllProperties = ("operation", "flags", "uidSet", "seqSet")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'operation' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "flags"))) { #optional property not found
            $Flags = $null
        } else {
            $Flags = $JsonParameters.PSobject.Properties["flags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uidSet"))) { #optional property not found
            $UidSet = $null
        } else {
            $UidSet = $JsonParameters.PSobject.Properties["uidSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "seqSet"))) { #optional property not found
            $SeqSet = $null
        } else {
            $SeqSet = $JsonParameters.PSobject.Properties["seqSet"].value
        }

        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "flags" = ${Flags}
            "uidSet" = ${UidSet}
            "seqSet" = ${SeqSet}
        }

        return $PSO
    }

}

