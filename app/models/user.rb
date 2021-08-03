class User < ApplicationRecord
    belongs_to :organization
    has_many :shifts

    validates :name, :email_address, :password, presence: true
    validates :email_address, uniqueness: true
    validates :password, length: { in: 6..20 }
    #add error message for password length

    has_secure_password
end
