class User < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3 }

	VALID_EMAIL_REGEX = /\A[\w+\-\.]+@[a-z\d\-\.]+\.[a-z]+\z/i

	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

	has_secure_password
end
