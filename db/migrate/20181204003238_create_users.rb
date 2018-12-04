class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, index: true, null: false
      t.string :last_name, index: true, null: false
      t.string :email, index: true, null: false

      t.timestamps
    end
  end
end
