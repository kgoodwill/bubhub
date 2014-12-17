Feature: Check the display of the /resources page
	As a web developer
	So I can view the resources
	I want to see the resources

Background:
	Given I am on /resources
	
Scenario: Links under "Maps"
	Given I am on /resources
	
	Then I should see "Local Bike Trail Map"
	Then I should see "A map of Bike trails in the Binghamton/Vestal area"
	
	Then I should see "Fitness Trails on Campus"
	Then I should see "A map of fitness trails provided by Campus Rec"
	
	Then I should see "Map of Future Two Rivers Greenway Route"
	Then I should see "A look at the future Two Rivers Greenway that is currently in progress"

Scenario: Links under "Activism"
	Given I am on /resources
	
	Then I should see "New York Bicycling Coalition"
	Then I should see "Making New York State a Better Place to Ride Bikes"
	
	Then I should see "Binghamton Metropolitan Transportation Study"
	Then I should see "The organization in charge of transportation planning in Broome/Tioga County"
	
Scenario: Links under "Bicycle Repair"
	Given I am on /resources
	
	Then I should see "Tune Up Your Bicycle for Spring"
	Then I should see "An instructional bicycle maintenance video"

	Then I should see "Chenango Point Cycles"
	Then I should see "A full-service local bike shop serving the Binghamton/Vestal community"

Scenario: Other Bike Share Programs
	Given I am on /resources

	Then I should see "Wolf Ride Bike Share"
	Then I should see "Stonybrook’s Bike Share Program"
	
	Then I should see "Big Red Bikes"
	Then I should see "Cornell’s Bike Share Program"
	
	Then I should see "Bomber Bikes"
	Then I should see "Ithaca College’s Bike Share Program"
