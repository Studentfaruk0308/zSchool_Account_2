class CreateFeepayments < ActiveRecord::Migration[6.1]
  def change
    create_table :feepayments do |t|
      t.string :feepayment_code
      t.datetime :date_of_payment
      t.integer :amount_of_payment
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
