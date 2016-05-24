FactoryGirl.define do
  factory :user, class: User do
    email "John@test.com"
    name "John Test"
    password "password"
    admin false
  end

  factory :admin, class: User do
    email "Admin@test.com"
    password "password"
    name "Admin Test"
    admin      true
  end

  factory :job, class: Job do
    title "big house"
    date (Time.now + 1)
    complete false
    user
    description "this place needs a lot of work done to it check it out"
  end
end
#
