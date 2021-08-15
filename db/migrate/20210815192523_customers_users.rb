class CustomersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_applications do |t|
      t.belongs_to :user
      t.belongs_to :customer

      t.timestamps
    end
  end
end
