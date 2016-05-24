# This will guess the User class
FactoryGirl.define do
  factory :user do
    email "John@test.com"
    password "password"
    admin false
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    first_name "Admin@test.com"
    password "password"
    admin      true
  end
end
