class Instructor < ApplicationRecord
  has_many :courses

  validates :first_name, :last_name, presence:true
  validates :phone_number, presence:true, length: {minimum: 10, maximum: 10}
  validates :email, presence:true
end
