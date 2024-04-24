Feature: To use the JSON path expression

  Background: Setup the base path
    Given url 'http://localhost:9191'
    And print '....path .........'

  Scenario: JSON path expression
    And path '/normal/webapi/all'
    When method get
    Then status 200
    * def jobTitle = karate.jsonPath(response,"$[?(@.jobId == 2)].jobTitle")
    And print "JobTitle", jobTitle
