Given(/^I have an? "([^"]*)" job$/) do |arg1|
  create(:job, user: User.first, title: arg1)
end

Given(/^I don't have an "([^"]*)" job$/) do |arg1|
  create(:job, user: build(:user, email: "someonelese@test.com"), title: arg1)  
end
