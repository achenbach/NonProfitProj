Feature: Accepting New Non-Profits
  As an Administrator
  So I can allow a Non-Profit to post volunteer opportunities
  I want to give a Non-Profit the permissions to post

Scenario: Accept a new Non-Profit as a "Non-Profit User"
	Given I am on the "Admin Page"
  Then I should see a Non-Profit's "Name", "Phone Number", "Address", "Website", and "Email"
	When I click the "Accept New Non-Profit" button
	Then I should see "Non-Profit added" 

Scenario: Decline a new Non-Profit as a "Non-Profit User"
	Given I am on the "Admin Page"
  Then I should see a Non-Profit's "Name", "Phone Number", "Address", "Website", and "Email"
	When I click the "Decline Non-Profit" button
	Then I should see "Non-Profit not added"
