class User < ApplicationRecord

	VALID_NAME_REGEX = /[a-z\s.-]/i
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :name, presence: true, format: { with: VALID_NAME_REGEX, message: "should not contain numbers or symbols" }

	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: "invalid"}

    # FOR GOOGLE
    # def self.from_omniauth(auth)
    #     where(email: auth.info.email).first_or_initialize do |user|
    #       user.user_name = auth.info.name
    #       user.email = auth.info.email
    #       user.password = SecureRandom.hex
    #     end
    #   end

end