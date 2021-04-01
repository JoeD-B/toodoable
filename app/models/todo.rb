class Todo < ApplicationRecord
    
    has_many :states
    has_many :users, through: :state
    
    validates_presence_of :name

<<<<<<< HEAD
    accepts_nested_attributes_for :states
    
    def states_attributes=(attrs)
        attrs.values.each do |hash|
            self.states.build(hash)
        end
    end
=======
    
>>>>>>> parent of 284d5e7... added nested for for priority state within todo. still cannot display statepriority on page
end