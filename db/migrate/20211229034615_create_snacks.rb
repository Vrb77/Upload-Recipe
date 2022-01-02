class CreateSnacks < ActiveRecord::Migration[6.1]
  def change
    create_table :snacks do |t|
      t.string :rname
      t.text :ingredient
      t.text :method

      t.timestamps
    end
  end
end
