FactoryGirl.define do
  factory :book do
    title {Faker::Lorem.sentence}
    description {Faker::Lorem.paragraphs}
    price {Faker::Number.decimal(5)}
    stock {Faker::Number.digit}
  end
end
