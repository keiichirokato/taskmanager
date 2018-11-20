class AddStatusToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :status, :string, inclusion: { in: %w(todo doing done) }
  end
end
