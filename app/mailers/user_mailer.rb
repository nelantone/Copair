# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'team@we-copair.com'

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'team@we-copair.com',
         subject: "A new contact form message from #{name}")
  end
end
