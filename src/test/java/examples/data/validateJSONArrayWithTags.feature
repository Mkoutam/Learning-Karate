@Regression
Feature: To validate the GET end point of the app
  To validate the get end point response

  Background: Setup the base path
    Given url 'http://localhost:9191'

  Scenario: fuzzy matcher get all the data from application in JSON
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response.[0].jobId == 1
    And match response.[0].experience[1] == 'Apple'
    And match response.[0].project[0].technology == '#[3]'
    # wild card entry * which returns everything in sequence
    And match response.[0].experience[*] == ['Google','Apple','Mobile Iron']
    # contains key

    And match response.[0].experience[*] contains ['Google','Apple']
    And match response.[*].jobId contains 1


  Scenario: get all the data from application in JSON
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
     #Fuzzy Matcher
    And  match response.[0].jobId == '#present'
    And match response.[0].experience[1] == '#notnull'
    And match response.[0].project[0].technology == '#array'
    And match response.[0].jobTitle == '#string'

    And  match response.[0].jobId == '#? _ >=1'
    And  match response.[0].jobTitle == '#string? _.length == 13'
 # To validate the array of strings
    And match response.[0].experience == '#[3] #string'