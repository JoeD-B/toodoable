class User
    has_many :states
    has_many :todos, through: :states
    has_secure_password

    validates_uniqueness_of :username
    validates_presence_of :username
end