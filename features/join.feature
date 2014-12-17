Feature: Check the display of the /join page
	As a web developer
	So I can view the join BikeShare page 
	I want to see the join BikeShare page 

Background:
	Given I am on /join
	
Scenario: Content for Join BikeShare page 
	Then I should see "Join the Team!" 
	Then I should see "Mondays at 9:15 PM in APP 111"
	Then I should see the image "Bike_Share_Team.jpg"
