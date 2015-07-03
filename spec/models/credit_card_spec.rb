require 'rails_helper'

RSpec.describe CreditCard, type: :model do
  let(:credit_card){FactoryGirl.create :credit_card}
  
  it{ expect(credit_card).to have_db_column(:number)}
  it{ expect(credit_card).to have_db_column(:CVV)}
  it{ expect(credit_card).to have_db_column(:expiration_month)}
  it{ expect(credit_card).to have_db_column(:expiration_year)}
  it{ expect(credit_card).to have_db_column(:firstname)}
  it{ expect(credit_card).to have_db_column(:lastname)}
  it{ expect(credit_card).to have_db_column(:customer_id)}
  
  it{ expect(credit_card).to have_db_index(:customer_id)}

  it{ expect(credit_card).to validate_presence_of(:number)}
  it{ expect(credit_card).to validate_presence_of(:CVV)}
  it{ expect(credit_card).to validate_presence_of(:expiration_month)}
  it{ expect(credit_card).to validate_presence_of(:expiration_year)}
  it{ expect(credit_card).to validate_presence_of(:firstname)}
  it{ expect(credit_card).to validate_presence_of(:lastname)}
  it{ expect(credit_card).to validate_length_of(:number)}
  it{ expect(credit_card).to validate_length_of(:CVV)}
  it{ expect(credit_card).to validate_length_of(:expiration_month)}
  it{ expect(credit_card).to validate_length_of(:expiration_year)}
  it{ expect(credit_card).to allow_value(:number)}
  it{ expect(credit_card).to allow_value(:CVV)}
  it{ expect(credit_card).to allow_value(:expiration_month)}
  it{ expect(credit_card).to allow_value(:expiration_year)}

  it{ expect(credit_card).to belong_to(:customer) }
  it{ expect(credit_card).to have_many(:order) }
end
