class CreateChores < ActiveRecord::Migration[5.1]
  def change
    create_table :chores do |t|
      t.string :name, null: false
      t.integer :duration
      t.boolean :status, default: false
      t.date :date, null: false
      t.references :household, foreign_key: true

      t.timestamps
    end
  end
end
