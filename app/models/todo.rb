class Todo < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :states
    has_many :users, through: :state
end