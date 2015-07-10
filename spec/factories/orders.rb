FactoryGirl.define do
  factory :order do
    total_price {Faker::Number.decimal 4}
    completed_date {Faker::Date.forward 23}
<<<<<<< HEAD
    state Order::STATES.shuffle.first
=======
    state Order::states.shuffle.first
>>>>>>> 2a33d58322800446122f9d07438beda6ed1283ee
  end

end
