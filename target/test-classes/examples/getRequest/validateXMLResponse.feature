Feature: To validate the GET end point of the app
  To validate the get end point response

  Background: Setup the base path
    Given url 'http://localhost:9191'

  Scenario: get all the data from application in JSON
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response
    And match response/List/item/jobId == '1'
    And match response/List/item/experience/experience[1] == 'Google'
    #Travers the xml similar to JSON
    And match response.List.item.experience.experience[0] == 'Google'
#  <List>
#  <item>
#  <jobId>1</jobId>
#  <jobTitle>Software Engg</jobTitle>
#  <jobDescription>To develop andriod application</jobDescription>
#  <experience>
#  <experience>Google</experience>
#  <experience>Apple</experience>
#  <experience>Mobile Iron</experience>
#  </experience>
#  <project>
#  <project>
#  <projectName>Movie App</projectName>
#  <technology>
#  <technology>Kotlin</technology>
#  <technology>SQL Lite</technology>
#  <technology>Gradle</technology>
#  </technology>
#  </project>
#  </project>
#  </item>
#  </List>