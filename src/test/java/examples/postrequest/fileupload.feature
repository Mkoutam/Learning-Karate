Feature: To upload the file
  Background: Setup the base path
    Given url 'http://localhost:9191'

  Scenario: TO upload the file to app
   Given path '/normal/webapi/upload'
    * def fileLocation = '../data/testUpload.txt'
    And multipart file file = { read:'#(fileLocation)' , filename:'testUpload.txt',Content-type:'multipart/form-data'}
    When method post
    Then status 200
    And print response