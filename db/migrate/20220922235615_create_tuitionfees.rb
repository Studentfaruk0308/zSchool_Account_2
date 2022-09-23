class CreateTuitionfees < ActiveRecord::Migration[6.1]
  def change
    create_table :tuitionfees do |t|
      t.string :tuitionfee_code
      t.integer :term_1_fee
      t.integer :term_2_fee
      t.integer :term_3_fee
      t.integer :term_4_fee
      t.integer :full_year_fee

      t.timestamps
    end
  end
end
