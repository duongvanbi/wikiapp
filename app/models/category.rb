class Category < ApplicationRecord

    has_many :posts
    validates :title, presence: true
    has_many :books
    enum category_type: {
        "General" => 0,
        "News" => 1,
        "Sports" => 2
      }

end
