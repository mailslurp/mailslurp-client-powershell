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

DNS lookup result. Includes record type, time to live, raw response, and name value for the name server response.

.PARAMETER RecordType
Domain Name Server Record Types
.PARAMETER Ttl
No description available.
.PARAMETER RecordEntries
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

DNSLookupResult<PSCustomObject>
#>

function Initialize-DNSLookupResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("A", "NS", "MD", "MF", "CNAME", "SOA", "MB", "MG", "MR", "NULL", "WKS", "PTR", "HINFO", "MINFO", "MX", "TXT", "RP", "AFSDB", "X25", "ISDN", "RT", "NSAP", "NSAP_PTR", "SIG", "KEY", "PX", "GPOS", "AAAA", "LOC", "NXT", "EID", "NIMLOC", "SRV", "ATMA", "NAPTR", "KX", "CERT", "A6", "DNAME", "SINK", "OPT", "APL", "DS", "SSHFP", "IPSECKEY", "RRSIG", "NSEC", "DNSKEY", "DHCID", "NSEC3", "NSEC3PARAM", "TLSA", "SMIMEA", "HIP", "NINFO", "RKEY", "TALINK", "CDS", "CDNSKEY", "OPENPGPKEY", "CSYNC", "ZONEMD", "SVCB", "HTTPS", "SPF", "UINFO", "UID", "GID", "UNSPEC", "NID", "L32", "L64", "LP", "EUI48", "EUI64", "TKEY", "TSIG", "IXFR", "AXFR", "MAILB", "MAILA", "ANY", "URI", "CAA", "AVC", "DOA", "AMTRELAY", "TA", "DLV")]
        [String]
        ${RecordType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Ttl},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RecordEntries},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DNSLookupResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($RecordType -eq $null) {
            throw "invalid value for 'RecordType', 'RecordType' cannot be null."
        }

        if ($Ttl -eq $null) {
            throw "invalid value for 'Ttl', 'Ttl' cannot be null."
        }

        if ($RecordEntries -eq $null) {
            throw "invalid value for 'RecordEntries', 'RecordEntries' cannot be null."
        }

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "recordType" = ${RecordType}
            "ttl" = ${Ttl}
            "recordEntries" = ${RecordEntries}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DNSLookupResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to DNSLookupResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DNSLookupResult<PSCustomObject>
#>
function ConvertFrom-JsonToDNSLookupResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DNSLookupResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DNSLookupResult
        $AllProperties = ("recordType", "ttl", "recordEntries", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'recordType' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recordType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recordType' missing."
        } else {
            $RecordType = $JsonParameters.PSobject.Properties["recordType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ttl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ttl' missing."
        } else {
            $Ttl = $JsonParameters.PSobject.Properties["ttl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recordEntries"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recordEntries' missing."
        } else {
            $RecordEntries = $JsonParameters.PSobject.Properties["recordEntries"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "recordType" = ${RecordType}
            "ttl" = ${Ttl}
            "recordEntries" = ${RecordEntries}
            "name" = ${Name}
        }

        return $PSO
    }

}

