class FirstMailMailer < ApplicationMailer
    default from: 'manikantap036@gmail.com'

    def first_email
        mail(to: 'parshwapatil9@gmail.com',subject: "Active Mailer")
    end
end
