
Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |arg1|
end

Then(/^I should see not see "([^"]*)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end

Given(/^I visit "([^"]*)"$/) do |arg1|
  visit arg1
end

Then(/^I should be on "([^"]*)"$/) do |arg1|
  expect(current_path).to eq arg1
end
