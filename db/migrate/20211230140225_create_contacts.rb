class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :mail
      t.integer :mno
      t.text :desp

      t.timestamps
    end
  end
end
