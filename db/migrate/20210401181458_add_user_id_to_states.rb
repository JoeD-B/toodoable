class AddUserIdToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :user_id, :integer
  end
end
