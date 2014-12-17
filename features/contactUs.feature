Feature: ContactUs
	In order to make sure the links are there
	As a contact page
	I want the text for the links to appear
	
Scenario: contact us page should have the following links
	Given I am on /contact_us 
	Then I should see "Binghamton Bike Share Email"
	Then I should see "Shane Tracy"
	Then I should see "Markus Sher"
	Then I should see "Hallie Friedman"
	Then I should see "Kyle Goodwill"
	Then I should see "Jesse Toder"
