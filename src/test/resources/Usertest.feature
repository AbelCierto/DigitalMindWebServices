Feature: User Adding
  As Developer
  I want to add a User through the API
  So that it can be available to applications

  Background:
    Given The Endpoint "http://localhost:%d/api/customers" is available

  @customer-adding
  Scenario: Add a User
    When A User Request is sent with values "Abel", "Cierto", "cierto@gmail.com", "993293832", "driver", "I am a Driver"
    Then A User with status 201 is received

  @delete-customer
  Scenario: Delete a Customer
    When A Customer Delete is sent with id "5"
    Then A customer with status 200 is received

  @get-customer-by-id
  Scenario: Get a Customer by Id
    When A Customer Selected is sent with id "2"
    Then A customer with status 200 is received

  @get-all-customers
  Scenario: Get all Customers
    When A Customer who are registered in DB
    Then List of Customer with status 200 is received

  @update-customer-by-id
  Scenario: Update a Customer by Id
    When A Customer Updated is sent with id "1", "Victor", "Zelada", "24242424", "Av. Salaverry 123", "98798798", "vz@upc.edu.pe"
    Then A customer with status 200 is received

