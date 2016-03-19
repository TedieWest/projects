class ApplicationMailer < ActionMailer::Base
  default from: "tedie.west@gmail.com"  #NOTE: when using gmail to send; like we are doing this gets overridden
  layout 'mailer'
end
