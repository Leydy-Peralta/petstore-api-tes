Feature: Obtener una mascota por ID
  Background:
    * url 'https://petstore.swagger.io/v2'
    Scenario: Consultar una mascota existente
      Given path 'pet', 1
      When method GET
      Then status 200
      #Validacion de campos
      And match response.id == 1
      And match response.name != null
      And match ['available', 'pending', 'sold'] contains response.status
      #And match response.status in ['available','pending','sold']