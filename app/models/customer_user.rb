class CustomerUser < ApplicationRecord
  has_many :customers_users
  has_many :users, through: :customers_users 
end
