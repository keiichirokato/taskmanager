class ChangeColumnToTask < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :detail, :string, limit: 1000
  end
end
