class User < ApplicationRecord
    validates :username, :email, :session_token, presence: true
    validates :username, :email, uniqueness: true
    validates :password, length: { minimum: 4, allow_nil: true }
end
