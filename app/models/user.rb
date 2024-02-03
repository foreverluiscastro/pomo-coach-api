class User < ApplicationRecord
    has_many :pomo_sessions

    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
end
