class AddReferencesToCourses < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :student, foreign_key: true
    add_reference :courses, :instructor, foreign_key: true
  end
end
