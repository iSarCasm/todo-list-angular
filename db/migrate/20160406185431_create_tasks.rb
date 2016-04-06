class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project, index: true, foreign_key: true
      t.string :title
      t.datetime :deadline
      t.integer :priority

      t.timestamps null: false
    end
  end
end
