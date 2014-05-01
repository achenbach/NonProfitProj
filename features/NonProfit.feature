Feature: Post a volunteer opportunity
  As a Non-Profit
  So I can get new volunteers
  I want to be able to post volunteer opportunities

Scenario: Post a volunteer opportunity
	Given I am on the "Post Volunteer Opportunity" Page
	When I select "Post New Job"
	Then I should be on the "Post Volunteer Opportunity Input" Page
	When I type in a valid "Event Name", "Event Time", "Event Date", "Event Location", and "Event Length"
	Then I should see "Event Successfully Posted"
	
Scenario: Post a volunteer opportunity with invalid date
	Given I am on the "Post Volunteer Opportunity" Page
	When I select "Post New Job"
	Then I should be on the "Post Volunteer Opportunity Input" Page
	When I type in a valid "Event Name", "Event Time",  "Event Location", and "Event Length" but an invalid "Event Date"
	Then I should see "Invalid Date"
