Feature: Task-4: Call feature

  @previous
  Scenario: Sample Post scenario
    * def dataGenerator = Java.type("utils.DataGenerator")
    * def requestBody =
    """
    {
        id : '#(dataGenerator.idGenerator())',
        username: '#(username)',
        firstName: '#(dataGenerator.firstNameGenerator())',
        lastName: '#(lastName)',
        email: '#(dataGenerator.emailGenerator())',
        password: '#(dataGenerator.passwordGenerator())',
        phone: '#(dataGenerator.phoneGenerator())',
        userStatus: '#(dataGenerator.userStatusGenerator())'
    }
    """
    Given url "https://petstore.swagger.io/v2"
    * string requestId = "" + requestBody.id + ""
    * path "user"
    * header Accept = "application/json"
    * header Content-Type = "application/json"
    * print requestBody
    * request requestBody
    When method POST
    Then status 200
    * match response.message == requestId

  @Test
  Scenario: Call previous scenario with parameters
    * def caller = call read("Call.feature@previous") {username : 'KLOIAUSERNAME', lastName : 'KLOIALASTNAME'}
    * print caller.response


#  Task-4
#  ● Create a scenario by copying Task-3
#  ● Modify the scenario to take username and lastname as parameter
#  ● Rest of the JSON field can be generated inside the scenario randomly
#  ● Call this scenario in other scenario by giving your name and last name as parameter