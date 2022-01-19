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


  Scenario: Call previous scenario with parameters
    * def caller = call read("Call.feature@previous") {username : 'KLOIAUSERNAME', lastName : 'KLOIALASTNAME'}
    * print caller.response
