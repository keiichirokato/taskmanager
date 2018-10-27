class SetValidationToTask < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :name, :string, null: false, limit: 255
    change_column :tasks, :detail, :string, limit: 10000
  end
end
