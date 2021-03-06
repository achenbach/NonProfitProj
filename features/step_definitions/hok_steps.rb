Given(/^I am on the "(.*?)"$/) do |page_name|
  visit "#{page_name.downcase.gsub!(' ','_')}.html"
end

Given(/^I am on the "(.*?)" page$/) do |page_name|
  visit "#{page_name.downcase.gsub!(' ','_')}.html"
end

Given(/^I have open the website to the "(.*?)" page$/) do |page_name|
  visit "#{page_name.downcase.gsub!(' ','_')}.html"
end

Then(/^I should see a Non\-Profit's "(.*?)", "(.*?)", "(.*?)", "(.*?)", and "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
  step "I should see \"#{arg1}\""
  step "I should see \"#{arg2}\""
  step "I should see \"#{arg3}\""
  step "I should see \"#{arg4}\""
  step "I should see \"#{arg5}\""
end

When(/^I click the "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I select the "(.*?)" button$/) do |button|
  click_button button
end

Then(/^I should be on the "(.*?)" page$/) do |content|
  visit "#{content.downcase.gsub!(' ','_')}.html"
end

When(/^I type in a valid "(.*?)", "(.*?)", "(.*?)", "(.*?)", and "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
	fill_in(arg1, :with => "Parade")
	fill_in(arg2, :with => "Noon")
	fill_in(arg3, :with => "3/30/2015")
	fill_in(arg4, :with => "Downtown")
	fill_in(arg5, :with => "3 Hours")
end


When(/^I type in a valid "(.*?)", "(.*?)", "(.*?)", and "(.*?)", but an invalid "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
	fill_in(arg1, :with => "Parade")
	fill_in(arg2, :with => "Noon")
	fill_in(arg3, :with => "Downtown")
	fill_in(arg4, :with => "3 Hours")
	fill_in(arg5, :with => "INVALID")
end

When(/^I type in a zip code and press "(.*?)"$/) do |arg1|
 fill_in("Zip Code", :with => "98765")
 click_button arg1
end

Then(/^I should receive a list of volunteer opportunities within the zip code$/) do
  step "I should see \"Volunteer Opportunities in your area:\""
end

When(/^I press the Volunteer button next to an available volunteer opportunity$/) do
  click_button "Volunteer"
end

Then(/^I should be on the "(.*?)"$/) do |arg1|
    visit "#{arg1.downcase.gsub!(' ','_')}.html"
end

Then(/^I should see the volunteer opportunity in the "(.*?)"$/) do |arg1|
  step "I should see \"Scheduled Volunteer Jobs:\""
end

When(/^I type in an invalid zip code and press "(.*?)"$/) do |arg1|
  click_button "Invalid Zip Code"
end







	
