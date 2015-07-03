class FixedRatingColumn < ActiveRecord::Migration
  def change
    rename_column :ratings, :rewiev, :review
  end
end
