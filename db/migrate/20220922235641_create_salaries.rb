class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.string :salary_code
      t.integer :fortnightly_salary

      t.timestamps
    end
  end
end
