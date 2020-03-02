---
title: Technical overview
layout: page
---

# How login.gov works, technically ⚙️

Login.gov is an identity provider that integrates with your application using industry protocols.

## Integration flow

* Once a [service provider configuration](/#service-provider-configuration) is provided in one of login.gov's environments, users start at your application and are redirected back to login.gov via [OIDC]({{ site.baseurl }}/oidc/) or [SAML]({{ site.baseurl }}/saml/) protocols.
* Your application request will determine if the request will be processed as just an authentication request at NIST Identity Assurance Level 1 (IAL1) or as an identity proofed event at NIST Identity Assurance Level 2 (IAL2).
* New users will either create an account corresponding to the identity assurance level requested (IAL1/IAL2) and returning users will present their existing login.gov credentials to reauthenticate into login.gov. If a user is new to your application they will consent to their information being shared with your application.
* Upon successful completion of the account creation or authentication, users will be redirected back to your application with the [user attributes]({{ site.baseurl }}/attributes/) that correspond to their user level.
* With the attributes provided by login.gov, your application will handle authorization of the user and assign roles and permissions.

<img src="{{ site.baseurl }}/assets/img/oidc-flow.png" alt="OIDC flow diagram" class="margin-y-7">

## Service provider configuration
This is the configuration for your application within login.gov's identity provider (main application). For the sandbox environment you will be able to configure this yourself. In our production environment, we will manage this configuration.
