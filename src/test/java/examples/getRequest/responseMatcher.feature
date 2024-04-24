@ignore
Feature: To validate the GET end point of the app
    To validate the get end point response

  Background: Setup the base path
    Given url 'http://localhost:9191'

  Scenario: get all the data from application in JSON
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response ==
    """
[{
    "jobId": 1,
    "jobTitle": "Software Engg",
    "jobDescription": "To develop andriod application",
    "experience": [
      "Google",
      "Apple",
      "Mobile Iron"
    ],
    "project": [
      {
        "projectName": "Movie App",
        "technology": [
          "Kotlin",
          "SQL Lite",
          "Gradle"
        ]
      }
    ]
  }]
    """


  Scenario: get all the data from application in XML format
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response

  Scenario: get all the data from application in JSON and validate using negate condition
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response !=
    """
[{
    "jobId": 89,
    "jobTitle": "Software Engg",
    "jobDescription": "To develop andriod application",
    "experience": [
      "Google",
      "Apple",
      "Mobile Iron"
    ],
    "project": [
      {
        "projectName": "Movie App",
        "technology": [
          "Kotlin",
          "SQL Lite",
          "Gradle"
        ]
      }
    ]
  }]
    """

  Scenario: get all the data from application in JSON and validate using specific property
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep { "jobDescription": "To develop andriod application"}

  Scenario: get all the data from application in JSON and validate using specific property project
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep { "jobDescription": "To develop andriod application"}
    And match response contains deep {"project":[{"projectName": "Movie App"}]}