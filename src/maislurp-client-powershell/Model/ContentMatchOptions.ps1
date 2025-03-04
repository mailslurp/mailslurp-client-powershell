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

Options for matching content using regex patterns based on Java Pattern syntax

.PARAMETER Pattern
Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns.
.OUTPUTS

ContentMatchOptions<PSCustomObject>
#>

function Initialize-ContentMatchOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pattern}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ContentMatchOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Pattern -eq $null) {
            throw "invalid value for 'Pattern', 'Pattern' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "pattern" = ${Pattern}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ContentMatchOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ContentMatchOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ContentMatchOptions<PSCustomObject>
#>
function ConvertFrom-JsonToContentMatchOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ContentMatchOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ContentMatchOptions
        $AllProperties = ("pattern")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'pattern' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pattern"))) {
            throw "Error! JSON cannot be serialized due to the required property 'pattern' missing."
        } else {
            $Pattern = $JsonParameters.PSobject.Properties["pattern"].value
        }

        $PSO = [PSCustomObject]@{
            "pattern" = ${Pattern}
        }

        return $PSO
    }

}

