class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :phoneNumber
      t.integer :code

      t.timestamps
    end
  end
end
