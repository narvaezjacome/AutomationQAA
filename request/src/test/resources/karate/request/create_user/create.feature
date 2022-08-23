Feature: Service cliente POST
  AS QA Automation
  I want to create a client
  To validate the status code and response

  Background:
    * url url

  Scenario: check the service POST method
    * def requestCreate = {"name": "#(name)", "job": "#(job)"}
    * def responsePost = read('classpath:karate/request/create_user/responsePost.json')

    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
    And match response == responsePost

  Scenario Outline: Create a users with different firstName
    * def requestBody = {"name": <name>, "job": <job>}

    Given path 'users'
    And request requestBody
    When method POST
    Then status 201

    Examples:
      | name          | job       |
      | "Jos Alfredo" | "Teacher" |
      | "#$%%"        | "Doctor"  |