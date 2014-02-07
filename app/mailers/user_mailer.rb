class UserMailer < ActionMailer::Base
    default from: "arweiner@alumni.stanford.edu"

    def welcome_email(user)
        @user = user
        @url  = 'http://localhost:3000/signin'
        mail(to: @user.email, subject: 'Welcome to the Gym Buddy app')
    end

end