#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'EmailControllerApi' {
    Context 'Invoke-DeleteAllEmails' {
        It 'Test Invoke-DeleteAllEmails' {
            #$TestResult = Invoke-DeleteAllEmails
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DeleteEmail' {
        It 'Test Invoke-DeleteEmail' {
            #$TestResult = Invoke-DeleteEmail -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DownloadAttachment' {
        It 'Test Invoke-DownloadAttachment' {
            #$TestResult = Invoke-DownloadAttachment -EmailId "TEST_VALUE" -AttachmentId "TEST_VALUE" -ApiKey "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DownloadAttachmentBase64' {
        It 'Test Invoke-DownloadAttachmentBase64' {
            #$TestResult = Invoke-DownloadAttachmentBase64 -EmailId "TEST_VALUE" -AttachmentId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DownloadBody' {
        It 'Test Invoke-DownloadBody' {
            #$TestResult = Invoke-DownloadBody -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DownloadBodyBytes' {
        It 'Test Invoke-DownloadBodyBytes' {
            #$TestResult = Invoke-DownloadBodyBytes -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-ForwardEmail' {
        It 'Test Invoke-ForwardEmail' {
            #$TestResult = Invoke-ForwardEmail -EmailId "TEST_VALUE" -ForwardEmailOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-AttachmentMetaData' {
        It 'Test Get-AttachmentMetaData' {
            #$TestResult = Get-AttachmentMetaData -EmailId "TEST_VALUE" -AttachmentId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-Attachments' {
        It 'Test Get-Attachments' {
            #$TestResult = Get-Attachments -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-Email' {
        It 'Test Get-Email' {
            #$TestResult = Get-Email -EmailId "TEST_VALUE" -Decode "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailContentMatch' {
        It 'Test Get-EmailContentMatch' {
            #$TestResult = Get-EmailContentMatch -EmailId "TEST_VALUE" -ContentMatchOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailCount' {
        It 'Test Get-EmailCount' {
            #$TestResult = Get-EmailCount
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailHTML' {
        It 'Test Get-EmailHTML' {
            #$TestResult = Get-EmailHTML -EmailId "TEST_VALUE" -Decode "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailHTMLQuery' {
        It 'Test Get-EmailHTMLQuery' {
            #$TestResult = Get-EmailHTMLQuery -EmailId "TEST_VALUE" -HtmlSelector "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailLinks' {
        It 'Test Get-EmailLinks' {
            #$TestResult = Get-EmailLinks -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailTextLines' {
        It 'Test Get-EmailTextLines' {
            #$TestResult = Get-EmailTextLines -EmailId "TEST_VALUE" -DecodeHtmlEntities "TEST_VALUE" -LineSeparator "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-EmailsPaginated' {
        It 'Test Get-EmailsPaginated' {
            #$TestResult = Get-EmailsPaginated -InboxId "TEST_VALUE" -Page "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE" -UnreadOnly "TEST_VALUE" -SearchFilter "TEST_VALUE" -Since "TEST_VALUE" -Before "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-GravatarUrlForEmailAddress' {
        It 'Test Get-GravatarUrlForEmailAddress' {
            #$TestResult = Get-GravatarUrlForEmailAddress -EmailAddress "TEST_VALUE" -Size "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-LatestEmail' {
        It 'Test Get-LatestEmail' {
            #$TestResult = Get-LatestEmail -InboxIds "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-LatestEmailInInbox' {
        It 'Test Get-LatestEmailInInbox' {
            #$TestResult = Get-LatestEmailInInbox -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OrganizationEmailsPaginated' {
        It 'Test Get-OrganizationEmailsPaginated' {
            #$TestResult = Get-OrganizationEmailsPaginated -InboxId "TEST_VALUE" -Page "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE" -UnreadOnly "TEST_VALUE" -SearchFilter "TEST_VALUE" -Since "TEST_VALUE" -Before "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-RawEmailContents' {
        It 'Test Get-RawEmailContents' {
            #$TestResult = Get-RawEmailContents -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-RawEmailJson' {
        It 'Test Get-RawEmailJson' {
            #$TestResult = Get-RawEmailJson -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-UnreadEmailCount' {
        It 'Test Get-UnreadEmailCount' {
            #$TestResult = Get-UnreadEmailCount
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-MarkAsRead' {
        It 'Test Invoke-MarkAsRead' {
            #$TestResult = Invoke-MarkAsRead -EmailId "TEST_VALUE" -Read "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-ReplyToEmail' {
        It 'Test Invoke-ReplyToEmail' {
            #$TestResult = Invoke-ReplyToEmail -EmailId "TEST_VALUE" -ReplyToEmailOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Send-EmailSourceOptional' {
        It 'Test Send-EmailSourceOptional' {
            #$TestResult = Send-EmailSourceOptional -SendEmailOptions "TEST_VALUE" -InboxId "TEST_VALUE" -UseDomainPool "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Confirm-Email' {
        It 'Test Confirm-Email' {
            #$TestResult = Confirm-Email -EmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
