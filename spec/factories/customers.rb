FactoryGirl.define do
  factory :customer do
    firstname {Faker::Name.first_name}
    lastname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password}
  end

end
