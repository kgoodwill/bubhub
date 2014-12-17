Feature: Index
  In order to make sure the links are working
  On the index_page
  I want to ensure the Sign-In and Register buttons work

Scenario: Sign-In Button
  Given I am on /index
  And I click on "Sign-In"
  Then I should be on /login

Scenario: Register Button
  Given I am on /index
  And I click on "Register"
  Then I should be on /register  
