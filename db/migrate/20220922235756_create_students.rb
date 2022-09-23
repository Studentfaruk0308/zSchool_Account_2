class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :student_code
      t.string :student_name
      t.datetime :student_date_of_birth
      t.string :student_email
      t.string :student_homeaddress
      t.string :student_mobile_number
      t.string :student_gender
      t.string :student_parent_name
      t.datetime :enrolled_date
      t.references :classroom, null: false, foreign_key: true
      t.references :tuitionfee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
