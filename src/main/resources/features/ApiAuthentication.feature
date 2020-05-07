Feature: Authentication
Scenario: Checking login
 Given Base URL is set to "https://reqres.in/"
 And End point is set to "api/login"
 And Login with username "eve.holt@reqres.in" with the password "cityslicka"
 When The "POST" call the request
 Then The status of the response is 200

