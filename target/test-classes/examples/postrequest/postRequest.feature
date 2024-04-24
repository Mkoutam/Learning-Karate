Feature: To test the post end point of the app

  Background: Setup the base path
    Given url 'http://localhost:9191'
    And print '....path .........'

  Scenario: To create the Job Entry
    And path '/normal/webapi/add'
    And request {"jobId":1,"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}

    And headers {Accept : 'application/json' , Content-Type : 'application/json'}
    When method post
    Then status 201
    And match response.jobTitle == 'Software Engg'

  Scenario: To create the Job Entry using JSon from file
    And path '/normal/webapi/add'
    * def body = read("../data/jobEntry.json")
    And request body
    And headers {Accept : 'application/json' , Content-Type : 'application/json'}
    When method post
    Then status 201
    And match response.jobTitle == 'Software Engg'


  Scenario: To create the Job Entry with Embedded Expression
    And path '/normal/webapi/add'
    * def getJobId = function() {return Math.floor((100) * Math.random());}
    And request {"jobId":'#(getJobId())',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}

    And headers {Accept : 'application/json' , Content-Type : 'application/json'}
    When method post
    Then status 201
    And print response
    And match response.jobTitle == 'Software Engg'


