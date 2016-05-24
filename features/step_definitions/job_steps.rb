Given(/^I have an? "([^"]*)" job$/) do |arg1|
  create(:job, user: User.first, title: arg1)
end

Given(/^I don't have an? "([^"]*)" job$/) do |arg1|
  create(:job, user: build(:user, email: "someonelese@test.com"), title: arg1)
end

When(/^I fill in all details for a job$/) do
  fill_in "job_title", with: "big job"
  select "Admin Test", from: "job_user"
end

When(/^assign to "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they should see that job$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
