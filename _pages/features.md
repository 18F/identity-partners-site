---
title: Features
layout: page
---

# Features

login.gov offers secure two-factor authentication with widely available as well as unphishable methods. This service provides users with secure access to digital services at over 17 different government agencies with a single set of credentials. For you, this means leveraging the best security defined by NIST 800-63 Identity Assurance Level 1 and Authentication Assurance Level 2, and FedRAMP Moderate while complying with 21st Century Idea Act in a easy-to-use experience.

# Accounts and authentication

<div class="border border-primary-light"></div>

## Account creation

Anyone with a valid email address and second factor can create a login.gov basic authentication account (IAL1/AAL2). Only U.S. citizens with a valid driver's license can currently create a verified account (IAL2/AAL2). [See our help content]({{ site.baseurl }}/help/creating-an-account) for more about the account creation process.

## Supported multi-factor authentication (MFA) methods

Supported MFA options include:
- **Phone**: Get a security code via text message (SMS) or phone call
- **Authentication application**: Set up an authentication application on your mobile device or computer to get a security code without providing a phone number
- **Security key**: Use a hardware security key
- **Government employee and contractor IDs**: Use your PIV/CAC card
- **Backup Codes**: Receive a pre-generated list of security codes to use when signing in
- **Web Authentication (WebAuthn)**: Use your device's biometric hardware (e.g. fingerprint reader) or FIDO security keys

## PIV/CAC support for government employees and contractors

We currently support PIV/CAC as a second factor and passwordless authentication using a PIV/CAC.

## Password requirements and expiration

login.gov requires passwords with a minimum of 12 characters and actively screens for and prohibits the use of more than 30k weak passwords, including those with repeating letters, popular words, or patterns that have been exposed in a security breach. Our password strength meter aligns with the NIST 800-63 guidelines for passwords. All login.gov users are required to use two-factor authentication at sign-in. We've also conducted usability tests to ensure that users are not overburdened by the requirements. We follow NIST's most recent guidelines for password security and do not automatically rotate or expire passwords after a time period or account inactivity.

## Accounts for foreign citizens or non-SSN holders

Anyone can create a login.gov basic authentication account (IAL1/AAL2) with an email address and second factor such as a phone number. Identity verification accounts (IAL2/AAL2) currently require a Social Security Number (SSN) to meet the NIST requirements of a government identification number.

## Authorization

At this time, login.gov supports authentication and identity proofing capabilities. We encourage agencies to take the lead on determining the best strategy for their role management and authorization. Our industry partners can help develop or provide existing solutions that can address your authorization needs. We'd be happy to schedule a conversation to help you understand successful use cases to identify solutions that meet your agency's needs.

## Disabling accounts

login.gov has default security measures that can lock a user out. Your application or agency access policies may provide further restrictions on the privileges a user may possess. We do not delete accounts due to inactivity and we don't disable accounts on behalf of the agency unless the user has attempted security breaches.

## How we define unique accounts

login.gov determines uniqueness by email address as they can't be used for multiple accounts. Attributes can be updated and managed after the user has created their account. login.gov has a unique UUID per user per agency to prevent inappropriate data sharing across agencies.

## Account creation for minors

Registration of minors is a business decision to be made by your agency. Anyone with an email address and a phone number can create a login.gov basic authentication account (IAL1/AAL2). For our identity verification accounts (IAL2/AAL2), we require a valid form of state-issued ID and a financial/utility account and address of record (phone number connected with the user's name via a telco check). Most minors do not have these forms of identification, which would preclude them from obtaining verified IAL2 account.

## User attribute bundle sent to agencies

Please see our [developer documentation](https://developers.login.gov/attributes) for the attributes an application can receive based on the identity assurance level.

## User account recovery

Our most up-to-date account recovery documentation is available on our help site: [How do I sign in if I don't have my authentication methods?](https://login.gov/help/signing-in/how-do-i-sign-in-if-i-dont-have-my-authentication-methods)

# Identity proofing

<div class="border border-primary-light"></div>

## What is remote identity proofing

NIST defines identity proofing as "The process by which a [credentialing service provider] collects, validates, and verifies information about a person." This is the process login.gov uses to verify that you are who you say you are. While many agencies can validate an individual's identity through an in-person proofing experience, we developed an online application that allows individuals to have their identities verified from their smartphone or computer.

## How we proof an identity

We offer two levels of identity assurance within our platform. For our login.gov basic authentication accounts (IAL1/AAL2), we rely on the user having access to an email address and a secure multi-factor method such as a phone or PIV/CAC.

For identity verified accounts at the NIST 800-63 IAL2 level, we ask users to upload a photograph of their state-issued ID and we verify that information against Department of Motor Vehicles (DMV) records. As a fallback we can also leverage address verification by mail. Users must also provide their phone numbers and SSN, which are validated against their known phone bill for accuracy.

To improve proofing coverage, we plan on expanding our use of data sources to include government data sources not available through traditional commercial data sources as we are a trusted federal entity. Likewise, we plan on integrating with in-person proofing services offered by the USPS.

## Death check

At elevation to IAL2, a death check is performed against the asserted SSN.

<div class="border border-primary-light"></div>

# Using login.gov with mobile apps

login.gov is a native web application that is mobile friendly and responsive that users can access from mobile devices and tablets. login.gov's usability is regularly tested on mobile devices. login.gov can be integrated with native mobile applications as well.