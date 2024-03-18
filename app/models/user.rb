class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum role: { Instructor: 'Instructor', student: 'student' }

        has_one_attached :profile_image


        def instructor?
          role == 'instructor'
        end
end
