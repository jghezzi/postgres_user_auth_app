class User < ActiveRecord::Base
	has_secure_password

	after_create :send_welcome_message

	validates_presence_of :email
	validates_uniqueness_of :email

	def send_welcome_message
		UserMailer.new_user_message(self)
	end

end
