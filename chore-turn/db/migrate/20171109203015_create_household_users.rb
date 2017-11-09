class CreateHouseholdUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :household_users do |t|
      t.references :user, foreign_key: true
      t.references :household, foreign_key: true

      t.timestamps
    end
  end
end
