class Customer < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :state 
      t.integer :zipcode
      t.integer :customer_number

      t.timestamps

    end
  end
end
