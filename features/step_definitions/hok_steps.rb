Given(/^I am on the "(.*?)"$/) do |page_name|
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

