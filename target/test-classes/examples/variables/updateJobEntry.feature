Feature: To test the updation of Job entry in the test application
  Test the end point PUT /normal/webapi/update

  Background: Create and Initialize base Url
    Given url 'http://localhost:9191'

  Scenario: To update the Job Entry for exiting job in JSON format by calling another feature file
    # <Gherkin keyword> <call> <read(<location of file>)>
    * def postrequest = call read("/createJobEntry.feature")
    # PUT request
    Given path '/normal/webapi/update'
    And request
"""
      {
      "jobId":'#(postrequest.id)',
      "jobTitle":"Software Engg - 3",
      "jobDescription":"To develop andriod application and Web Application",
      "experience":[
        "Google",
        "Apple",
        "Mobile Iron",
        "Google"
      ],
      "project":[
        {
           "projectName":"Movie App",
           "technology":[
              "Kotlin",
              "SQL Lite",
              "Gradle",
              "Jenkins"
           ]
        },
        {
           "projectName":"Movie App",
           "technology":[
              "Kotlin",
              "SQL Lite",
              "Gradle",
              "Jenkins"
           ]
        }
      ]
      }
      """
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method put
    Then status 200
    * def projectArray = karate.jsonPath(response, "$[?(@.jobId == '+ postrequest.id+')].project")
    And print projectArray


  Scenario: To update the Job Entry for exiting job in JSON format by calling another feature file with variables
    # <Gherkin keyword> <call> <read(<location of file>)>
    #Given call read("../createJobEntry.feature") { var1:value, var2:value }
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def id = getRandomValue()
    * def postRequest = call read("/createJobEntryWithVariables.feature") { _url:'http://localhost:9191', _path:'/normal/webapi/add', _id:'#(id)' }
    # PUT request
    Given path '/normal/webapi/update'
    And request
      """
      {
      "jobId":'#(id)',
      "jobTitle":"Software Engg - 3",
      "jobDescription":"To develop andriod application and Web Application",
      "experience":[
        "Google",
        "Apple",
        "Mobile Iron",
        "Google"
      ],
      "project":[
        {
           "projectName":"Movie App",
           "technology":[
              "Kotlin",
              "SQL Lite",
              "Gradle",
              "Jenkins"
           ]
        },
        {
           "projectName":"Movie App",
           "technology":[
              "Kotlin",
              "SQL Lite",
              "Gradle",
              "Jenkins"
           ]
        }
      ]
      }
      """
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method put
    Then status 200
    * def projectArray = karate.jsonPath(response, "$[?(@.jobId == " + id + ")].project")
    And print projectArray
    And match projectArray[0] == '#[2]'