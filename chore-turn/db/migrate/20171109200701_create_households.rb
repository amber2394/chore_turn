class CreateHouseholds < ActiveRecord::Migration[5.1]
  def change
    create_table :households do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip_code, null: false
      t.timestamps
    end
  end
end
