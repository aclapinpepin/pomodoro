class RemoveCountAndTotalColumnsToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.remove :count, :total
    end
  end
end
