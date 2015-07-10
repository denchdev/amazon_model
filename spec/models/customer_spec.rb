require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer){FactoryGirl.create :customer}
  
  it{ expect(customer).to have_db_column(:firstname)}
  it{ expect(customer).to have_db_column(:lastname)}
  it{ expect(customer).to have_db_column(:email)}
  it{ expect(customer).to have_db_column(:password)}
  
  it{ expect(customer).to validate_presence_of(:firstname) }  
  it{ expect(customer).to validate_presence_of(:lastname) }  
  it{ expect(customer).to validate_presence_of(:email) }
  it{ expect(customer).to validate_presence_of(:password) }
  it{ expect(customer).to validate_uniqueness_of(:email) }

  it{ expect(customer).to have_many(:ratings) }
  it{ expect(customer).to have_many(:orders) }
  
  describe "#new_order" do
    let(:order) { FactoryGirl::create :order }
    
    it "" do
      
    end
    
  end
  
  describe "#current_order" do
    let(:order) { FactoryGirl::create :order }
    
    it "" do
      
    end
    
  end
  
  
end
