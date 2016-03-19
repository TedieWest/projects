class UserMailer < Devise::Mailer
	  default from: "tedie.west@gmail.com"  #NOTE: when using gmail to send; like we are doing this gets overridden

	  def welcome_email(user)
	  	@user = user
	  	mail(to: @user.email, subject: 'Welcome to Projects')
	  end

	  def reset_password_instructions(record)
	  end

	  def confirmation_instructions(record)
	  end
	  
	  def unlock_instructions(record)
	  end
end
