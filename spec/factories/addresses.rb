FactoryGirl.define do
  factory :address do
    address {Faker::Address.street_address}
    zipcode {Faker::Address.zip_code}
    city {Faker::Address.city}
    phone {Faker::PhoneNumber.phone_number}
  end
end
