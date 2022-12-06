class Book < ApplicationRecord
  belongs_to :author,:optional => true
  belongs_to :category,:optional => true
  has_many :orders
end
