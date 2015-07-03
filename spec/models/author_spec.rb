require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author){FactoryGirl.create :author}
  
  it{ expect(author).to have_db_column(:firstname)}
  it{ expect(author).to have_db_column(:lastname)}
  it{ expect(author).to have_db_column(:biography)}
  
  it{ expect(author).to validate_presence_of(:firstname) }
  it{ expect(author).to validate_presence_of(:lastname) }
  
  it{ expect(author).to have_many(:books) }
end
