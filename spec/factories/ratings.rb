FactoryGirl.define do
  factory :rating do
    review {Faker::Lorem.paragraph}
    rating {Faker::Number.between(0, 100)}
  end

end
