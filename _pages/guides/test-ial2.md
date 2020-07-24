---
title: Testing IAL2
lead: >
  Integrate with login.gov in a user-friendly manner.
sidenav:
  - text: Document upload
    href: "#document-upload"
    links:
      - text: Data testing
        href: "#data-testing"
  - text: Personal information verification
    href: "#personal-information-verification"
  - text: Phone number verification
    href: "#phone-number-verification"
---

# Testing IAL2

The login.gov sandbox test environment is configured to pass most information that is entered during the IAL2 flow. This allows the proofing flow to be tested without the need to enter personally identifiable information (PII). There are special values that can be entered to simulate error states while testing in the login.gov sandbox environment.

## Document upload

Login.gov prompts users to upload the front and back of their documents during proofing through a few different methods. In the sandbox environment, any image file that is uploaded will pass.

### Data testing

A YAML file can be uploaded instead of an image to trigger different behaviors. The YAML file can be used to simulate the reading of certain attributes from the test document. Here is an example YAML file that does that:

```yaml
document:
  type: license
  first_name: Susan
  last_name: Smith
  middle_name: Q
  address1: 1 Microsoft Way
  address2: Apt 3
  city: Bayside
  state: NY
  zipcode: '11364'
  dob: 10/06/1938
  phone: +1 314-555-1212
```

A YAML file can also be used to simulate an error reading or validating the document. Here is an example YAML file that does that:

```yaml
friendly_error: |
  We couldn't read the barcode on the back of your ID. Try taking a new picture.
  Make sure the entire barcode is visible, clean, and doesn't have glares.
  (Error code: 200)
```

## Personal information verification

Login.gov collects and verifies personal information during the IAL2 proofing process. It is configured to consider almost all personal information valid in the sandbox. There is one social security number that can be entered to simulate a failure to validate personal information: “666-66-6666”.

## Phone number verification

Login.gov collects a phone number during the IAL2 proofing process. In a live production environment, login.gov checks that this phone number is associated with the applicant. You can use any phone number for testing purposes in the sandbox environment. However, the phone number ‘7035555555’ can be entered to simulate an error associating an applicant to a phone number.
