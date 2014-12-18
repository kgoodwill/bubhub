Feature: How It Works    
    As a web developer
    I want to ensure the information is displayed

Background: 
    Given I am on /how_it_works

Scenario: Display the information
    Then I should see "How It Works"
    Then I should see "Policies"
    Then I should see "Hours:"
    Then I should see "Time Limit:"
    Then I should see "Lock It Up:"
    Then I should see "Damage:"
    Then I should see "Thank you for abiding by our rules. We hope you enjoy our program!"

