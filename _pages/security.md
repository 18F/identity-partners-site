---
title: login.gov Security
layout: page
---

# login.gov Security

Being deliberate about security means focusing our attention on what needs to be protected. It means thinking carefully about how to balance protection and accessibility. Doing this successfully includes educating users about how they can protect themselves or mitigate the effects of crime.

In login.gov’s case, for instance, we have to decide exactly what data we store and for how long. We also have to decide what steps users must take to access their information. All of these decisions take careful deliberation to determine what’s the best option for both users and agencies and to ensure maximum functionality.

Being deliberate about security means focusing our attention on what needs to be protected. It means thinking carefully about how to balance protection and accessibility. Doing this successfully includes educating users about how they can protect themselves or mitigate the effects of crime.

In login.gov’s case, for instance, we have to decide exactly what data we store and for how long. We also have to decide what steps users must take to access their information. All of these decisions take careful deliberation to determine what’s the best option for both users and agencies and to ensure maximum functionality.

## PII encryption

The login.gov team collects several pieces of sensitive personally identifiable information from users during identity verification. This includes first name, last name, date of birth, social security number, address, and possible phone number. During the identity verification process, this information is verified with 3rd parties. With a user’s consent, this data is also shared with service providers when a user signs in to access a given government service. 

In order to store PII data securely, a user access key is generated using methods described in existing documentation with the user’s password and login.gov’s KMS instance. This results in a CEK (Customer Encryption Key) that is used to encrypt the user’s PII data with AES-256-GCM. During decryption, the same methods are used to generate a user access key with a CEK that can be used to perform decryption.

## Password verification

Since the SCrypt hash is one of the secrets used to build a user access key to get a CEK, it cannot be stored with the user record to be used for password verification. For this reason, login.gov instead saves a SHA256 digest of the CEK that results from building a user access key with the user’s password and KMS. When a user signs in to login.gov, login.gov verifies that their password is correct by creating a UAK (User Authentication Key) with the asserted password and comparing the SHA256 digest of the CEK to the value in the database.

## Attribute encryption
In addition to the PII collected during identity verification, login.gov also collects data from users that is necessary for the sign in process. This includes an email address and 2FA phone number.
Since this data qualifies as PII, login.gov wants to encrypt it to protect user privacy. This needs to be done in a way that allows user data to be decrypted by the application without the user’s password to facilitate activities such as querying a user by email or finding the phone number to send a 2FA token to.

To accomplish this, login.gov has a shared attribute encryption key that is used as the password and salt to generate a user access key. The CEK for this user access key is then used to encrypt protected attributes for the user using AES-256-GCM.

Since the data that is saved is encrypted, it is not directly queryable. So, for selected attributes, such as email, when the data is encrypted, an HMAC (Hash-based Message Authentication Code) hash of the plaintext attribute is saved as well. This means that when querying for a user with a given email the application can take an HMAC of the email and then query the database for the record with the given email fingerprint.

In addition to fingerprinting encrypted attributes, the application also computes an HMAC fingerprint of the social security number of the user and stores the result in the database. This is done for the purpose of de-duping records so that no 2 active records can contain the same social security number, and therefore presumably the same identity.

## Session encryption

During the identity verification process users provide login.gov with PII which is encrypted at the end of the process as described above. Before the user has provided their password for encryption, the data needs to be encrypted in such a way that the application can access it between verification steps.

To accomplish this, login.gov has a shared session encryption key that is used as the password and salt to generate a user access key. The CEK for this user access key is then used to encrypt the data using AES-256-GCM before it is written to session storage in redis.

Once the user has finished identity verification, they provide their password which is used to encrypt the data to be stored in the database as described above. At this point, the encrypted data is deleted from session storage in redis.login.gov uses a variety of authentication methods to protect this U.S. government service and your data, and to ensure the service remains available to all users. These methods include monitoring and recording network traffic (any data going in and out of login.gov) to identify unauthorized attempts to change information, or otherwise cause damage.
Unauthorized access or use of login.gov (e.g. use for criminal purposes, or to cause damage, etc.) is against the law, and may subject you to criminal prosecution and penalties.

## Vulnerability Disclosure Policy

login.gov authorizes the outside security community to perform security research for the intent of reporting discovered security vulnerabilities in the login.gov platform.
View our [Vulnerability Disclosure Policy](https://18f.gsa.gov/vulnerability-disclosure-policy/) for details on this policy and how to report discovered vulnerabilities.

## Our security practices

In building login.gov, we’re adhering to standards put forward by the National Institute of Standards and Technology (NIST 800-63-3). Additionally we’re adhering to government security best practices including FedRAMP[https://www.fedramp.gov/documents/], building in the open, conducting rigorous and routine security evaluations in addition to compliance with the Federal Information Security Management Act (FISMA).

### Resources:
- To obtain information on login.gov’s System Security Plan, request a package through the [FedRAMP marketplace](https://marketplace.fedramp.gov/#/product/logingov?sort=productName)  by submitting the Package Access Request Form.
- GSA’s Information System Security Officer maybe contacted through the Partnership team.