class User < ApplicationRecord
    has_many :orders
    enum level: {
    "standard" => 0,
    "premium" => 1,
    "vip" => 2,
  }
end
