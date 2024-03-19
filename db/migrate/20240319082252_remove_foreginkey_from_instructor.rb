class RemoveForeginkeyFromInstructor < ActiveRecord::Migration[6.1]
  def change
    remove_reference :instructors, :course, foreign_key: true
  end
end
