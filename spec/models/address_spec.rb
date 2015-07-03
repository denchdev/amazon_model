require 'rails_helper'

RSpec.describe Address, type: :model do
  let(:address){FactoryGirl.create :address}
  
  it{ expect(address).to have_db_column(:address)}
  it{ expect(address).to have_db_column(:zipcode)}
  it{ expect(address).to have_db_column(:city)}
  it{ expect(address).to have_db_column(:phone)}
  it{ expect(address).to have_db_column(:country_id)}
  
  it{ expect(address).to have_db_index(:country_id)}

  it{ expect(address).to validate_presence_of(:address) }  
  it{ expect(address).to validate_presence_of(:zipcode) }  
  it{ expect(address).to validate_presence_of(:city) }  
  it{ expect(address).to validate_presence_of(:phone) }

  it{ expect(address).to belong_to(:country) }
end
