class Todo < ApplicationRecord
    has_many :states
    accepts_nested_attributes_for :states
    
    validates_presence_of :content


    def states_attributes=(attrs)
        attrs.values.each do |hash|
            self.states.build(hash)
        end
    end

end
