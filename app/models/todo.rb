class Todo < ApplicationRecord
    
    has_many :states
    
    validates_presence_of :name

    accepts_nested_attributes_for :states
    
    def states_attributes=(attrs)
        attrs.values.each do |hash|
            self.states.build(hash)
        end
    end
end