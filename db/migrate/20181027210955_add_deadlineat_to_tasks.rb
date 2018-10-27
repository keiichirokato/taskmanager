class AddDeadlineatToTasks < ActiveRecord::Migration[5.2]
  def up
    add_column :tasks, :deadline_at, :timestamp
  end
end
