class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.integer :count
      t.time :total
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
