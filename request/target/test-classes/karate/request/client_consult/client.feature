Feature: Service client GET
  As QA Automation
  I want to consult a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service get method
    * def responsesGet = read('classpath:karate/request/client_consult/responseGet.json')
    Given path 'users','2'
    When method get
    Then status 200
    And match response == responsesGet
    And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
    And assert response.data.email == email

  Scenario Outline: Create a users with different firstName

    Given path 'users', <id>
    When method GET
    Then status <statusCode>
    And match response == <expected>

    Examples:
      | id            | statusCode | expected |
      | "Jos Alfredo" | 404        | {}       |
      | "#$%%"        | 404        | {}       |