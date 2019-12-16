class HomeController < ApplicationController
  def home

  end

  def contact

  end

  # This method is used to
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    # Checks whether email field is blank or not, if it is not then it will send
    # an email to the user. If the field is blank then it will alert the user that
    # an email is required
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end


end
