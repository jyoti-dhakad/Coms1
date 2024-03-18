class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
