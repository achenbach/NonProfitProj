Feature: Find Volunteer Opportunities
  As a Volunteer
  So I can contribute to organizations
  I want to be able to search for volunteer opportunities that Non-Profits have posted

Scenario: Search for volunteer postings using Zip Code
	Given I have open the website to the "search volunteer opportunities" page
	When I type in a zip code and press "Search"
	Then I should receive a list of volunteer opportunities within the zip code
	When I press the Volunteer button next to an available volunteer opportunity  
	Then I should be on the "User Page"
	And I should see the volunteer opportunity in the "Current Volunteer Jobs"

Scenario: Search for volunteer postings using an invalid Zip Code
	Given I have open the website to the "search volunteer opportunities" page
	When I type in an invalid zip code and press "Search"
	Then I should see "Invalid Zip Code: Try Again."
