@Regretion
  Feature: Crear una nueva mascota en petstore
    Background:
      * url 'https://petstore.swagger.io/v2'
      * def randomId = Math.floor(Math.random() * 1000000)
      * def randomName = 'Pet-' + randomId

      ##* print "randomId ===>", randomId
      #* print "randomName ===>", randomName

      Scenario: Crear una mascota con datos dinamicos

        Given path 'pet'
        And request
        """
        {
           "id": #(randomId),
            "name": "#(randomName)",
            "photoUrls": ["https://ejemplo.com/foto.jpg"],
            "status": "available"
        }
        """
        When method POST
        Then status 200