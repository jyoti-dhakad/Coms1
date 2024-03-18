class Course < ApplicationRecord
    has_many :students
    has_many :instructors

    validates :name, uniqueness:true, presence:true
    validates :description, presence:true
    validates :course_fees, presence:true
end
