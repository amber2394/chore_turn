class CreateAssignmentChores < ActiveRecord::Migration[5.1]
  def change
    create_table :assignment_chores do |t|
      t.references :user, foreign_key: true
      t.references :chore, foreign_key: true

      t.timestamps
    end
  end
end
