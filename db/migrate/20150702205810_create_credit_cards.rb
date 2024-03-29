class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.integer :CVV
      t.integer :expiration_month
      t.integer :expiration_year
      t.string :firstname
      t.string :lastname
      t.belongs_to :customer, index: true, foreign_key: true 

      t.timestamps null: false
    end
  end
end
