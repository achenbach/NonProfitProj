Feature: Post a volunteer opportunity
  As a Non-Profit
  So I can get new volunteers
  I want to be able to post volunteer opportunities

Scenario: Post a volunteer opportunity
	Given I am on the "Post Volunteer Opportunity" page
	When I select the "Post New Job" button
	Then I should be on the "Post Volunteer Opportunity Input" page
	When I type in a valid "Event Name", "Event Time", "Event Date", "Event Location", and "Event Length"
	Then I press "Submit"
	Then I should see "Event Successfully Posted"
	
Scenario: Post a volunteer opportunity with invalid date
	Given I am on the "Post Volunteer Opportunity" page
	When I press "Post New Job"
	Then I should be on the "Post Volunteer Opportunity Input" page
	When I type in a valid "Event Name", "Event Time", "Event Location", and "Event Length", but an invalid "Event Date"
	Then I press "Submit Invalid"
	Then I should see "Invalid Date"
