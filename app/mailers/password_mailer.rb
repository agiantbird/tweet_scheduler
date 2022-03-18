class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    @token = params[:user].signed_id(purpose: "password_reset", expires_in: 15.minutes)
    # user.to_sgid 
    # user.to_sgid(expires_in: 15.minutes)
    # user.to_sgid(expires_in: 15.minutes, purpose: "password_reset")

    mail to: params[:user].email
  end
end
