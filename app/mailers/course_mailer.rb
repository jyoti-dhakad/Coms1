class CourseMailer < ApplicationMailer
    def approve(user)
        @user = user
        mail(to: @user.email, subject: 'Welcome to Our Site!')
    end
end
