Feature: Accepting New Non-Profits
  As an Administrator
  So I can allow a Non-Profit to post volunteer opportunities
  I want to give a Non-Profit the permissions to post

Scenario: Accept a new Non-Profit as a "Non-Profit User"
	Given I am on the "Admin Page"
  # don't we need to some data about which non-profit we are accepting
	When I click the "Accept New Non-Profit" button
	Then I should see "Non-Profit added" 

Scenario: Decline a new Non-Profit as a "Non-Profit User"
	Given I am on the "Admin Page"
  # don't we need to some data about which non-profit we are accepting
	When I click the "Decline Non-Profit" button
	Then I should see "Non-Profit not added"
