class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :teacher_code
      t.string :teacher_name
      t.string :teacher_email
      t.string :teacher_homeaddress
      t.string :teacher_mobile_number
      t.string :teacher_gender
      t.datetime :engagement_date
      t.string :teacher_bankdetails
      t.references :salary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
