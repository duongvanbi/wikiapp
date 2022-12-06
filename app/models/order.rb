class Order < ApplicationRecord
  belongs_to :users
  belongs_to :books
  has_many :order_details
  validates :quanity, numericality: { greater_than: 0 }
end
