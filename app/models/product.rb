class Product < ApplicationRecord
    has_many :orders
    validates_uniqueness_of  :sku
end
