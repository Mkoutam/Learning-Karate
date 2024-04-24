Feature: To access the GET end point which is secure with Basic Auth
  GET /secure/webapi/all

  Background: Setup the Base path
    Given url _url

  Scenario: To access the GET end point with basic auth
    Given path '/secure/webapi/all'
    And headers {Accept:'application/json', Authorization:'Basic YWRtaW46d2VsY29tZQ=='}
    When method get
    Then status 200
    And match response == '#notnull'

  Scenario: (Failure)To access the GET end point with basic auth
    Given path '/secure/webapi/all'
    And headers {Accept:'application/json', Authorization:'Basic YWRtaW46VsY29tZQ=='}
    When method get
    Then status 401
