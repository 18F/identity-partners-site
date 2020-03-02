---
title: Sign-in guidelines
lead: >
  Apply the following standards for your Sign-in button to create a simple and consistent experience for users.
---

Apply the following standards for your Sign-in button to create a simple and consistent experience for users.

## Single sign-in option

When using login.gov to authenticate your users, we recommend implementing one official button using “Sign in” as the call-to-action. The styling and placement of the Sign-in button supports the recognition of the user interface component and helps your users know that this is the next step in the process. This single button enables the findability of both the Sign-in and Sign-up tasks on the part of the flow login.gov owns once an application externalizes authentication. After a user signs in, a Sign- out button labeled “Sign out” replaces the Sign-in button on the interface.

### Placement

Users are familiar with the Sign-in button placed on the top right of the website headers.  Placing your Sign-in button in this location of your site’s header takes advantage of the familiarity with this common pattern and can be carried throughout the entire site/app.

### Buttons
The Sign-in button should use your primary or important button color. Since it is a primary action, it is recommended to use a solid button instead of text links, or text and icon combinations. Buttons with a solid colored background help your users know that this is the next step in the process. This styling also clearly shows the button’s clickable target area because of the padding around the label that creates a larger tappable area. This also supports mobile users. Avoid using outline-only buttons since they do not communicate a primary action.

Additionally the Sign-out button style should match the Sign-in button.

The [U.S. Web Design System](https://designsystem.digital.gov/components/button/) offers code examples of default, static, hover and active button states styling and accessibility guidelines.

### Icons

The Sign-in button may also use icon, but it should not in exclude the use of a label. The icon should adhere to accessibility alt-tag guidelines.

We recommend using the [Sign-in icon](https://fontawesome.com/icons/sign-in?style=solid) from the [Font Awesome](https://fontawesome.com/) icon set. This icon is frequently used to suggest an entry into a system. Be careful **not** to use the [external-link icon](https://fontawesome.com/icons/external-link?style=solid) that might suggest a link to another website and confuse users, especially those using screen readers. The order of icon or label first in the button itself is flexible to match your site’s design.

### Labeling

“Sign in” is the preferred label for the Sign-in button. This is consistent with the Sign-in call-to-actions in headlines, links, and buttons on login.gov’s screens and in our end user support documentation.

### Linking

The Sign-in button link initiates authentication with login.gov.  This starts the login.gov experience where the user signs in or creates an account.

### Color

The [U.S. Web Design System](https://designsystem.digital.gov/components/button/) offers some default button styles that use a solid colored background for the button implemented with no border color and white colored text. This styling creates a strong, easy-to-read contrast to meet Section 508 guidelines for using colors that contrast well with white text and work with your site’s palette.

We recommend you use the primary action color from your site’s design system or style guide for the Sign-in buttonn, an example of a standard primary button be found on login.gov's [Design System](https://design.login.gov/components/buttons/).

### Font

Sans serif and neutral typefaces are recommended for your Sign in button. A heavier than normal font weight is recommended for enhanced visual hierarchy.

## Multiple sign-in options

Sometimes agencies have more than one way users can sign in. Although this is not the preferred experience, here are some suggestions to accommodate this scenario.

## Global sign-in button

Consider maintaining a single Sign-in button on your site’s header, placing it in the top right corner. When tapped, the button takes the user to a screen with the multiple Sign-in button options.

### Multiple Sign-in options in one screen

Ensure that the screen with multiple Sign-in options has the following elements:
- The agency's or app’s logo
- A title guiding the user to the purpose of the page, for example “Sign in to [name of your app]”
- Individual buttons for each Sign-in option
- The site’s footer

Take into account common patterns to support usability. We recommend that links to all Sign-in options be equal in size. Stacked, solid colored buttons work best because the stacking supports responsive layouts and mobile views. Consistency and equal sizes also supports scanning of information, a common way users consume content. And it minimizes the cognitive load for users so they can focus on evaluating the options as opposed to evaluating the differences of the user interface controls.

From top to bottom, this is the order we encourage for multiple sign in options listed under the title:
1. Custom text and notifications, including instructions
2. Email input field, if using, followed by password input field
3. Checkbox to remember device, if using
4. A link to recover password of email password combo
5. Sign-in button
6. The label “Or” to separate the email and password boxes from the the Sign-in buttons
7. Sign-in buttons for each option labeled “Sign in with [name of authentication option]”

Style each button with a different background color. For login.gov we recommend using the color hexadecimal value of #0071bb. Center-justify the text inthe button. Follow the same font recommendations as the single button option.

## Sign-out

Users need a clearly marked button to sign out. After a user has signed in to your app, support the sign out interaction with a button labeled “Sign out”. This button replaces the Sign-in button on the interface, preferably in the same location. The  [Sign-out icon](https://fontawesome.com/icons/sign-out?style=solid) from Font Awesome is suggested for the Sign-out button.
