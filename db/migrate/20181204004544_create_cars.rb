class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_type, index: true, null: false
      t.references :driver, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
