Feature: Task-1: Get feature

  Scenario Outline: get pets based on <status>
    Given url "https://petstore.swagger.io/v2"
    * path "pet/findByStatus"
    * param status = "<status>"
    * header Accept = "application/json"
    * header Content-Type = "application/json"
    When method GET
    * print response
    Then status 200
    * match header Content-Type == "application/json"
    * match each response[*].status == "<status>"
    * match each response[*].id == "#present"
    * match each response[*].id == "#notnull"
    Examples:
      | status    |
      | available |
      | pending   |
