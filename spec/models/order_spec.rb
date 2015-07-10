require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order){FactoryGirl.create :order}
  
  it{ expect(order).to have_db_column(:total_price)}
  it{ expect(order).to have_db_column(:completed_date)}
  it{ expect(order).to have_db_column(:state)}
  it{ expect(order).to have_db_column(:customer_id)}
  it{ expect(order).to have_db_column(:credit_card_id)}
  it{ expect(order).to have_db_column(:billing_address_id)}
  it{ expect(order).to have_db_column(:shipping_address_id)}
  
  it{ expect(order).to have_db_index(:customer_id)}
  it{ expect(order).to have_db_index(:credit_card_id)}

<<<<<<< HEAD
  it{ expect(order).to validate_presence_of(:total_price) }  
=======
  it{ expect(order).to validate_presence_of(:price) }  
>>>>>>> 2a33d58322800446122f9d07438beda6ed1283ee
  it{ expect(order).to validate_presence_of(:completed_date) }  
  it{ expect(order).to validate_presence_of(:state) }

  it{ expect(order).to belong_to(:customer) }
  it{ expect(order).to belong_to(:credit_card) }
  it{ expect(order).to belong_to(:billing_address) }
  it{ expect(order).to belong_to(:shipping_address) }
<<<<<<< HEAD
  it{ expect(order).to have_many(:order_items) }
=======
  it{ expect(order).to have_many(:orders) }
>>>>>>> 2a33d58322800446122f9d07438beda6ed1283ee
  
  describe "#add_book" do
    let(:book) { FactoryGirl::create :book }
    
    it "" do
      
    end
    
  end
  
  describe "#total" do
    
    it "" do
      
    end
    
  end
  
end
