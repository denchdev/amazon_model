class EditCreditCard < ActiveRecord::Migration
  def change
    change_column :credit_cards, :number, :string
    change_column :credit_cards, :CVV, :string
    change_column :credit_cards, :expiration_month, :string
    change_column :credit_cards, :expiration_year, :string
  end
end
