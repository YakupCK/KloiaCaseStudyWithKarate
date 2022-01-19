@Test
  Feature: Task-3: Post
    Background:
      * def userGenerator = Java.type("utils.CreateUser")
      * def userInfo = userGenerator.getUserInfo()
      * string requestId = "" + userInfo.id + ""

    Scenario: Create a new user
      Given url "https://petstore.swagger.io/v2"
      * path "user"
      * header Accept = "application/json"
      * header Content-Type = "application/json"
      * print userInfo
      * request userInfo
      When method POST
      Then status 200
      * match response.message == requestId


#  Task-3
#  ● Set the Content-type=application/json
#  ● Set path user
#  ● Create a user with the following JSON model
#    ○ Each field in the JSON model should be randomly generated for each call
#    ○ The method which is created with Task-2 SHOULD be used to set email
#    ○ Helper methods like email generation can be developed and used for the
#    other attributes in the JSON model
#      {
#        "id": 0,
#        "username": "string",
#        "firstName": "string",
#        "lastName": "string",
#        "email": "string",
#        "password": "string",
#        "phone": "string",
#        "userStatus": 0
#      }
#  ● Verify the below requested in the response:
#    ○ Status code should be 200
#    ○ message should be equal to the posted id


