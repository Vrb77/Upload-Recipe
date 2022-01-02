class CreateDesserts < ActiveRecord::Migration[6.1]
  def change
    create_table :desserts do |t|
      t.string :rname
      t.text :ingredient
      t.text :method
      
      t.timestamps
    end
  end
end
