require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  let(:order_item){FactoryGirl.create :order_item}
  
  it{ expect(order_item).to have_db_column(:price)}
  it{ expect(order_item).to have_db_column(:quantity)}
  
  it{ expect(order_item).to have_db_index(:book_id)}
  it{ expect(order_item).to have_db_index(:order_id)}

  it{ expect(order_item).to validate_presence_of(:price) }  
  it{ expect(order_item).to validate_presence_of(:quantity) }  

end
