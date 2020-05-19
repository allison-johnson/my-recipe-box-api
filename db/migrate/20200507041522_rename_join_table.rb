class RenameJoinTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :recipe_days, :recipes_days
  end
end
