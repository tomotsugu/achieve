class CreateAddbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :addbooks do |t|
      t.string :name
      t.string :addr
      t.string :addyear

      t.timestamps
    end
  end
end
