class AddRecipeToDessert < ActiveRecord::Migration[6.1]
  def change
    add_column :desserts, :recipe, :text
  end
end
