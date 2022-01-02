class CreateSalads < ActiveRecord::Migration[6.1]
  def change
    create_table :salads do |t|
      t.string :rname
      t.text :ingredient
      t.text :method

      t.timestamps
    end
  end
end
