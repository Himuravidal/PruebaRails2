class CreatePendingTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :pending_tasks do |t|
      t.boolean :done, default: false
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
