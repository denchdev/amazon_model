require 'rails_helper'

RSpec.describe Rating, type: :model do
  let(:rating){FactoryGirl.create :rating}
  
  it{ expect(rating).to have_db_column(:review)}
  it{ expect(rating).to have_db_column(:rating)}
  it{ expect(rating).to have_db_column(:customer_id)}
  it{ expect(rating).to have_db_column(:book_id)}
  
  it{ expect(rating).to have_db_index(:customer_id)}
  it{ expect(rating).to have_db_index(:book_id)}

#  it{ expect(rating).to validate_inclusion_of(:rating) }  

  it{ expect(rating).to belong_to(:customer) }
  it{ expect(rating).to belong_to(:book) }
end
