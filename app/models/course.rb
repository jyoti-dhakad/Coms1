class Course < ApplicationRecord
    has_many :students
    belongs_to :instructor

    validates :name, uniqueness:true, presence:true
    validates :description, presence:true
    validates :course_fees, presence:true

    
end
