class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true, presence: true
    validates :first_name, presence: true, length: {minimum: 2}
    validates :last_name, presence: true, length: {minimum: 2}
    validates :password, presence: true, length: {minimum: 4}
    has_many :tasks
 
end
