Given(/^I am signed in as "([^"]*)"$/) do |arg1|
  sign_in_user(create(arg1.to_sym))
end

def sign_in_user(user)
  visit new_user_session_path
  fill_in :user_email, with: user.email
  fill_in :user_password, with: user.password
  click_button "Log in"
end
