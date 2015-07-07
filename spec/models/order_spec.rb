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

  it{ expect(order).to validate_presence_of(:price) }  
  it{ expect(order).to validate_presence_of(:completed_date) }  
  it{ expect(order).to validate_presence_of(:state) }

  it{ expect(order).to belong_to(:customer) }
  it{ expect(order).to belong_to(:credit_card) }
  it{ expect(order).to belong_to(:billing_address) }
  it{ expect(order).to belong_to(:shipping_address) }
  it{ expect(order).to belong_to(:orders) }
end
