class RemoveForeignKeyFromcourse < ActiveRecord::Migration[6.1]
  def change
    remove_reference :courses, :student, foreign_key: true
    remove_reference :courses, :instructor, foreign_key: true
  end
end
