class Todo < ApplicationRecord
    
    has_many :states
    has_many :users, through: :state
    
    validates_presence_of :name
end