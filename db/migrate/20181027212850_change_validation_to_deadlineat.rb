class ChangeValidationToDeadlineat < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :deadline_at, :date
  end
end
