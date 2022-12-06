class Post < ApplicationRecord
    belongs_to :category, :optional => true
    default_scope -> { where(status: true).order(created_at: :desc) }

end
