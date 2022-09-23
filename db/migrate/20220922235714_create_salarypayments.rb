class CreateSalarypayments < ActiveRecord::Migration[6.1]
  def change
    create_table :salarypayments do |t|
      t.string :salarypayment_code
      t.datetime :date_of_payment
      t.integer :amount_of_payment
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
