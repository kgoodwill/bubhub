Feature: Check the display of the /resources page
	As a web developer
	So I can view the resources
	I want to see the resources

Background:
	Given I am on /resources
	
Scenario: Links under "Maps"
	Then I should see "A map of Bike trails in the Binghamton/Vestal area"
	Then I should see "A map of fitness trails provided by Campus Rec"
	Then I should see "A look at the future Two Rivers Greenway that is currently in progress"
