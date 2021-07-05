#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'InboxControllerApi' {
    Context 'New-Inbox' {
        It 'Test New-Inbox' {
            #$TestResult = New-Inbox -AllowTeamAccess "TEST_VALUE" -Description "TEST_VALUE" -EmailAddress "TEST_VALUE" -ExpiresAt "TEST_VALUE" -ExpiresIn "TEST_VALUE" -Favourite "TEST_VALUE" -InboxType "TEST_VALUE" -Name "TEST_VALUE" -Tags "TEST_VALUE" -UseDomainPool "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-InboxRuleset' {
        It 'Test New-InboxRuleset' {
            #$TestResult = New-InboxRuleset -InboxId "TEST_VALUE" -CreateInboxRulesetOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-InboxWithDefaults' {
        It 'Test New-InboxWithDefaults' {
            #$TestResult = New-InboxWithDefaults
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-InboxWithOptions' {
        It 'Test New-InboxWithOptions' {
            #$TestResult = New-InboxWithOptions -CreateInboxDto "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DeleteAllInboxes' {
        It 'Test Invoke-DeleteAllInboxes' {
            #$TestResult = Invoke-DeleteAllInboxes
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DeleteInbox' {
        It 'Test Invoke-DeleteInbox' {
            #$TestResult = Invoke-DeleteInbox -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-AllInboxes' {
        It 'Test Get-AllInboxes' {
            #$TestResult = Get-AllInboxes -Favourite "TEST_VALUE" -Page "TEST_VALUE" -Search "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE" -Tag "TEST_VALUE" -TeamAccess "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-Emails' {
        It 'Test Get-Emails' {
            #$TestResult = Get-Emails -InboxId "TEST_VALUE" -Limit "TEST_VALUE" -MinCount "TEST_VALUE" -RetryTimeout "TEST_VALUE" -Since "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-Inbox' {
        It 'Test Get-Inbox' {
            #$TestResult = Get-Inbox -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-InboxEmailsPaginated' {
        It 'Test Get-InboxEmailsPaginated' {
            #$TestResult = Get-InboxEmailsPaginated -InboxId "TEST_VALUE" -Page "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-InboxSentEmails' {
        It 'Test Get-InboxSentEmails' {
            #$TestResult = Get-InboxSentEmails -InboxId "TEST_VALUE" -Page "TEST_VALUE" -SearchFilter "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-InboxTags' {
        It 'Test Get-InboxTags' {
            #$TestResult = Get-InboxTags
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-Inboxes' {
        It 'Test Get-Inboxes' {
            #$TestResult = Get-Inboxes -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OrganizationInboxes' {
        It 'Test Get-OrganizationInboxes' {
            #$TestResult = Get-OrganizationInboxes -Page "TEST_VALUE" -SearchFilter "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-ListInboxRulesets' {
        It 'Test Invoke-ListInboxRulesets' {
            #$TestResult = Invoke-ListInboxRulesets -InboxId "TEST_VALUE" -Page "TEST_VALUE" -SearchFilter "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-ListInboxTrackingPixels' {
        It 'Test Invoke-ListInboxTrackingPixels' {
            #$TestResult = Invoke-ListInboxTrackingPixels -InboxId "TEST_VALUE" -Page "TEST_VALUE" -SearchFilter "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Send-Email' {
        It 'Test Send-Email' {
            #$TestResult = Send-Email -InboxId "TEST_VALUE" -SendEmailOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Send-EmailAndConfirm' {
        It 'Test Send-EmailAndConfirm' {
            #$TestResult = Send-EmailAndConfirm -InboxId "TEST_VALUE" -SendEmailOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Send-TestEmail' {
        It 'Test Send-TestEmail' {
            #$TestResult = Send-TestEmail -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Set-InboxFavourited' {
        It 'Test Set-InboxFavourited' {
            #$TestResult = Set-InboxFavourited -InboxId "TEST_VALUE" -SetInboxFavouritedOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-Inbox' {
        It 'Test Update-Inbox' {
            #$TestResult = Update-Inbox -InboxId "TEST_VALUE" -UpdateInboxOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
