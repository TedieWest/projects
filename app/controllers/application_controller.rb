class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # The following few lines are needed to make sure the : is not ommitted before the port when sending emails with a clickable URL
  # specifically for reset password
  # This seems to be a workaround for a bug - ???
  before_filter :mailer_set_url_options

  def mailer_set_url_options
  ActionMailer::Base.default_url_options[:host] = request.host_with_port
end

end
