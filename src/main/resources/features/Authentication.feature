Feature:Login using OTP flow
Scenario: login with valid OTP
1=>
Given: User clicks on sign up button
And: User enter his phone number
And: click on the "generate OTP" button
But: User not receives the OTP
And: User click on the "resend OTP" button
And: User receive the OTP on phone number
And: User enter the same OTP
And: click on the "submit" button
Then: User should be able to login to the application

2=>
Given: User clicks on sign up button
And: User enter his phone number
And: click on the "generate OTP" button
when: User receives the OTP
But: User enter invalid OTP
Then: User get invalid OTP error message with "resend OTP" button
And: User click on the "resend OTP" button
And: User receive the OTP on phone number
And: User enter the same OTP
Then: User should be able to login to the application

3=>
Given: User Click on sign up button
And: User enter his invalid phone number
And: click on the "generate OTP" button
Then: User should not be able to login to the application

4=>
Given: User Click on sign up button
And: User click on the "generate OTP" button
Then: User get message "you need to first enter phone number"

Example scenario:

Feature: Testing login feature for application using OTP
Scenario: login with valid OTP
Given: User clicks on sign up button
And: User enters his phone number
And: clicks on the "generate OTP" button
When: User receives the OTP
And: User enters the same OTP
Then: User should be able to login to the application.