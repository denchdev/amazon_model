FactoryGirl.define do
  factory :order_item do
    price {Faker::Number.decimal 3}
    quantity {Faker::Number.digit}
  end

end
