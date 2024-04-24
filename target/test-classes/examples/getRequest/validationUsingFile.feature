Feature: To Validate the response from File

  Background: Setup the base path
    Given url 'http://localhost:9191'

  Scenario: get all the data from application in JSON
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def actual = read("/JsonResponse.json")
    And match response == actual
    And print "File Content =>" , actual

