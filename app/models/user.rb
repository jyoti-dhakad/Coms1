class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum role: { Instructor: 'Instructor', student: 'student' }

        has_one_attached :profile_image
        enum status: { pending: 0, cancelled: 1, approved: 2 }


        after_create :send_welcome_email

        private
      
        def send_welcome_email
          UserMailer.welcome_email(self).deliver_now
        end  
end
