Given(/^I have an? "([^"]*)" job$/) do |arg1|
  create(:job, user: User.first, title: arg1)
end

Given(/^I don't have an? "([^"]*)" job$/) do |arg1|
  create(:job, user: build(:user, email: "someonelese@test.com"), title: arg1)
end

When(/^I fill in all details for a job$/) do
  fill_in "job_title", with: "big job"
  fill_in "job_description", with: "some description"
  fill_in "job_notes", with: "some notes"
  attach_file "job_document", "./features/data/work_order.pdf"
  fill_in "job_trade", with: "plumber"
  fill_in "job_assinging_company", with: "some notes"

  fill_in "job_address_name", with: "address name"
  fill_in "job_address_first_line", with: "first line"
  fill_in "job_address_second_line", with: "second line"
  fill_in "job_address_city", with: "city"
  fill_in "job_address_county", with: "county"
  fill_in "job_address_postcode", with: "postcode"
  fill_in "job_address_notes", with: "notes"
  select "Admin Test", from: "job_user"
  click_button "Create"
end


Then(/^they should see that job$/) do
    visit jobs_path
    expect(page).to have_content "big job"
end

#
