FactoryGirl.define do
  factory :order do
    total_price {Faker::Number.decimal 4}
    completed_date {Faker::Date.forward 23}
    state Order::STATES.shuffle.first
  end

end
