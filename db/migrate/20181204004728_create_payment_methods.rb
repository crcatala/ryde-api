class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.string :card_type, index: true, null: false
      t.integer :last_four, null: false
      t.string :payment_type, index: true, null: false

      t.timestamps
    end
  end
end
