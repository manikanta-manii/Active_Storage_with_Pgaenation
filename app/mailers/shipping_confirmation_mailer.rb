class ShippingConfirmationMailer < ApplicationMailer
    default from: 'maniipsi036@gmail.com'
    def shipping_confirmation_email
        mail(to: 'manikantap036@gmail.com',subject: "Active Mailer")
    end
end
