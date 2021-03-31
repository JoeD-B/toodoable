class State < ApplicationRecord
    #add validators for priority ie range from 1-3 and assign colors to corresponding number
    belongs_to :item
end
