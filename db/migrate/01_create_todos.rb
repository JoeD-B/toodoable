class CreateTodos < ApplicationRecord
    def change
      create_table :todos do |t|
        t.string :name
        t.integer :user_id
  
        
      end
    end
end
  