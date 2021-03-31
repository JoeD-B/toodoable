class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.boolean :status
      t.integer :priority
      t.integer :todo_id

      t.timestamps
    end
  end
end
