class State < ApplicationRecord
    belongs_to :todo
    validates_presence_of :priority

    
end
