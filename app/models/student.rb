class Student < ApplicationRecord
  belongs_to :course

  validates :first_name, :last_name, presence:true
  validates :phone_number, presence:true, length: {minimum:8, maximum:10}
  validates :email, presence:true
end
