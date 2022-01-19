Feature: Task-1: Get feature
  @Test
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


#  Task-1
#  ● Set path pet/findByStatus
#  ● Use query-string parameters to set the rest of the url path
#  ● Get pets for the given statuses below (Scenario Outline scheme should be used)
#    ○ Available
#    ○ Pending
#  ● Verify the below requested in the response:
#    ○ Status code should be 200
#    ○ Content-type should be application/json
#    ○ status should be equal to the posted status
#    ○ Each item in response should have an id and not null