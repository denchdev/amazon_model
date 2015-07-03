class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :review
      t.integer :rating
      t.belongs_to :customer, index: true, foreign_key: true
      t.belongs_to :book, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
