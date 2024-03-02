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

.PARAMETER Names
No description available.
.PARAMETER DetectedFeatures
No description available.
.PARAMETER FeatureOverviews
No description available.
.PARAMETER FeaturePercentages
No description available.
.OUTPUTS

EmailFeatureSupportResult<PSCustomObject>
#>

function Initialize-EmailFeatureSupportResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Names},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("amp", "css-accent-color", "css-align-items", "css-animation", "css-aspect-ratio", "css-at-font-face", "css-at-import", "css-at-keyframes", "css-at-media", "css-at-supports", "css-background-blend-mode", "css-background-clip", "css-background-color", "css-background-image", "css-background-origin", "css-background-position", "css-background-repeat", "css-background-size", "css-background", "css-block-inline-size", "css-border-image", "css-border-inline-block-individual", "css-border-inline-block-longhand", "css-border-inline-block", "css-border-radius-logical", "css-border-radius", "css-border", "css-box-shadow", "css-box-sizing", "css-caption-side", "css-clip-path", "css-column-count", "css-column-layout-properties", "css-direction", "css-display-flex", "css-display-grid", "css-display-none", "css-display", "css-filter", "css-flex-direction", "css-flex-wrap", "css-float", "css-font-kerning", "css-font-weight", "css-font", "css-gap", "css-grid-template", "css-height", "css-hyphens", "css-inline-size", "css-justify-content", "css-left-right-top-bottom", "css-letter-spacing", "css-line-height", "css-list-style-image", "css-list-style-position", "css-list-style-type", "css-list-style", "css-margin-block-start-end", "css-margin-inline-block", "css-margin-inline-start-end", "css-margin-inline", "css-margin", "css-max-block-size", "css-max-height", "css-max-width", "css-min-height", "css-min-inline-size", "css-min-width", "css-mix-blend-mode", "css-object-fit", "css-object-position", "css-opacity", "css-outline-offset", "css-outline", "css-overflow-wrap", "css-overflow", "css-padding-block-start-end", "css-padding-inline-block", "css-padding-inline-start-end", "css-padding", "css-position", "css-tab-size", "css-table-layout", "css-text-align-last", "css-text-align", "css-text-decoration-color", "css-text-decoration-thickness", "css-text-decoration", "css-text-emphasis-position", "css-text-emphasis", "css-text-indent", "css-text-overflow", "css-text-shadow", "css-text-transform", "css-text-underline-offset", "css-transform", "css-vertical-align", "css-visibility", "css-white-space", "css-width", "css-word-break", "css-writing-mode", "css-z-index", "html-abbr", "html-address", "html-align", "html-anchor-links", "html-aria-describedby", "html-aria-hidden", "html-aria-label", "html-aria-labelledby", "html-aria-live", "html-audio", "html-background", "html-base", "html-blockquote", "html-body", "html-button-reset", "html-button-submit", "html-code", "html-del", "html-dfn", "html-dialog", "html-dir", "html-div", "html-doctype", "html-form", "html-h1-h6", "html-height", "html-image-maps", "html-input-checkbox", "html-input-hidden", "html-input-radio", "html-input-reset", "html-input-submit", "html-input-text", "html-lang", "html-link", "html-lists", "html-loading-attribute", "html-mailto-links", "html-marquee", "html-meter", "html-object", "html-p", "html-picture", "html-pre", "html-progress", "html-required", "html-role", "html-rp", "html-rt", "html-ruby", "html-select", "html-semantics", "html-small", "html-span", "html-srcset", "html-strike", "html-strong", "html-style", "html-svg", "html-table", "html-target", "html-textarea", "html-valign", "html-video", "html-wbr", "html-width", "image-avif", "image-base64", "image-bmp", "image-gif", "image-ico", "image-jpg", "image-png", "image-svg", "image-webp", "unsupported")]
        [String[]]
        ${DetectedFeatures},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FeatureOverviews},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FeaturePercentages}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailFeatureSupportResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Names -eq $null) {
            throw "invalid value for 'Names', 'Names' cannot be null."
        }

        if ($DetectedFeatures -eq $null) {
            throw "invalid value for 'DetectedFeatures', 'DetectedFeatures' cannot be null."
        }

        if ($FeatureOverviews -eq $null) {
            throw "invalid value for 'FeatureOverviews', 'FeatureOverviews' cannot be null."
        }

        if ($FeaturePercentages -eq $null) {
            throw "invalid value for 'FeaturePercentages', 'FeaturePercentages' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "names" = ${Names}
            "detectedFeatures" = ${DetectedFeatures}
            "featureOverviews" = ${FeatureOverviews}
            "featurePercentages" = ${FeaturePercentages}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailFeatureSupportResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailFeatureSupportResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailFeatureSupportResult<PSCustomObject>
#>
function ConvertFrom-JsonToEmailFeatureSupportResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailFeatureSupportResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailFeatureSupportResult
        $AllProperties = ("names", "detectedFeatures", "featureOverviews", "featurePercentages")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'names' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "names"))) {
            throw "Error! JSON cannot be serialized due to the required property 'names' missing."
        } else {
            $Names = $JsonParameters.PSobject.Properties["names"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detectedFeatures"))) {
            throw "Error! JSON cannot be serialized due to the required property 'detectedFeatures' missing."
        } else {
            $DetectedFeatures = $JsonParameters.PSobject.Properties["detectedFeatures"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "featureOverviews"))) {
            throw "Error! JSON cannot be serialized due to the required property 'featureOverviews' missing."
        } else {
            $FeatureOverviews = $JsonParameters.PSobject.Properties["featureOverviews"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "featurePercentages"))) {
            throw "Error! JSON cannot be serialized due to the required property 'featurePercentages' missing."
        } else {
            $FeaturePercentages = $JsonParameters.PSobject.Properties["featurePercentages"].value
        }

        $PSO = [PSCustomObject]@{
            "names" = ${Names}
            "detectedFeatures" = ${DetectedFeatures}
            "featureOverviews" = ${FeatureOverviews}
            "featurePercentages" = ${FeaturePercentages}
        }

        return $PSO
    }

}

