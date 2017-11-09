class CreateHouseholds < ActiveRecord::Migration[5.1]
  def change
    create_table :households do |t|
      t.string :name, null: false
      t.string :home_address, null: false
      t.timestamps
    end
  end
end
