class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :rname
      t.text :ingredient
      t.text :method

      t.timestamps
    end
  end
end
