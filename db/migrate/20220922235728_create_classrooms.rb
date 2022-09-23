class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string :classroom_code
      t.string :classroom_name
      t.string :classroom_gender
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
