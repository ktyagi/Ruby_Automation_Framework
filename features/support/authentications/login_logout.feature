Feature: Login and Logout
 # @Login
  Scenario: Login
    When User open WITS website
    And User login with username "kuldeep1@mailinator.com" and password "Abcde@123"
    Then User should be logged-in successfully
#    Given User is on prices page
#    When User clicks on logout link
#    Then User should be logged-out successfully

#  @Logout
#  Scenario: Logout
#    When User clicks on logout link
#    Then User should be logged-out successfully

#  Scenario: Login and logout using data from yml
#    When I open WITS website
#    And I login using data from yml