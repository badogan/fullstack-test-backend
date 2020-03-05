class Size < ApplicationRecord
    has_many :orders
    has_many :products, through: :orders
    has_many :users, through: :orders
end
