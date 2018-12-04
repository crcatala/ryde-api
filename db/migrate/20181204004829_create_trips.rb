class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :car, foreign_key: true, index: true, null: false
      t.string :city, index: true, null: false
      t.references :driver, foreign_key: true, index: true, null: false
      t.decimal :fare, null: false
      t.references :payment_method, foreign_key: true, index: true, null: false
      t.datetime :pickup_time, index: true, null: false

      t.timestamps
    end
  end
end
