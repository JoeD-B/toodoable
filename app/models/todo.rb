class Todo < ApplicationRecord
    has_many :states
    
    accepts_nested_attributes_for :states
    validates_presence_of :content
    

end
