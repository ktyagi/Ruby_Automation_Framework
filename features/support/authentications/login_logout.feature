Feature: Login and Logout

  Background: Flow till login
    When User open WITS website
    And User login with username "kuldeep1@mailinator.com" and password "Abcde@123"

  @VerifyLogin
  Scenario: VerifyLogin
    Then User should be logged-in successfully
#    Given User is logged-in
#    When User clicks on logout link
#    Then User should be logged-out successfully

  @VerifyLogout
  Scenario: VerifyLogout
    Given User is logged-in
    When User clicks on logout link
    Then User should be logged-out successfully

#  Scenario: Login and logout using data from yml
#    When I open WITS website
#    And I login using data from yml