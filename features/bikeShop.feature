Feature: Bike_Shop_Info
	In order to make sure links are working
	On the bike_shop_info page
	I want to ensure the Request Repair & Contact Us links work
	
Scenario: Bike Shop links
	Given I am on /bike_shop_info
	Then I should see "Request Repair"
	Then I should see "Contact Us"
