class CreateRecipeDays < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_days do |t|
      t.integer :recipe_id
      t.integer :day_id
    end
  end
end
