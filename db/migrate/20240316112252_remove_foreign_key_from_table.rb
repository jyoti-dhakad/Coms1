class RemoveForeignKeyFromTable < ActiveRecord::Migration[6.1]
  def change
    remove_reference :students, :course, foreign_key: true
    remove_reference :instructors, :course, foreign_key: true
  end
end
