class ApplicationMailer < ActionMailer::Base
  default to: 'info@module-selector.com', from: "info@module-selector.com"
  layout 'mailer'
end
