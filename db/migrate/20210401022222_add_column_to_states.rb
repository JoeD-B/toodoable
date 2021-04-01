class AddColumnToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :todo_id, :integer
  end
end
