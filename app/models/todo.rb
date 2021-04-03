class Todo < ApplicationRecord
    has_many :states
    
    accepts_nested_attributes_for :states
    validates_presence_of :content
    has_many :users, through: :states

    scope :content_search, ->(content) {self.where("content = ?", content)}

   
end
