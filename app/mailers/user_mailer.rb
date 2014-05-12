class UserMailer < ActionMailer::Base
  default from: "tiyappmailer@gmail.com" #can be overriden in individual actions

  def new_user(user)
  	@user = user #example User.find(1) = "bob smith"
  	mail(to: user.email, subject: "Thanks for signing up!")
  end

  def self.new_user_message(user)
			UserMailer.new_user(user).deliver
  end
end
