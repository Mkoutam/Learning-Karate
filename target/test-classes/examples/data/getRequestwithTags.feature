@Regression
Feature: To test the get end point of the app

  Background: Setup the base path
    Given url 'http://localhost:9191'
    And print '....path .........'
  @smoke
  Scenario: get all the data from application in JSON
    And path '/normal/webapi/all'
    When method get
    Then status 200

 @Smoke
  Scenario: get all the data from application in JSON format using path variable
    #Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    When method get
    Then status 200

  Scenario: get all the data from application in XML format using path variable
    #Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200

