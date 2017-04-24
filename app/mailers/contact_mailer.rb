class ContactMailer < ApplicationMailer


  default from: 'hello@rumahbaca.com'


  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'hello@grafikey.com',
             subject: 'New message from website') do |format|
          format.html { render 'contact_mailer' }
          format.text { render 'contact_mailer' }
        end
  end


end
