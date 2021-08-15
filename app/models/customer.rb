class Customer < ApplicationRecord
  has_many :customer_records
  has_many :users, through: :customer_records
end
