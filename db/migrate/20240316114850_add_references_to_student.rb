class AddReferencesToStudent < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :course, foreign_key: true
    add_reference :instructors, :course, foreign_key: true
  end
end
