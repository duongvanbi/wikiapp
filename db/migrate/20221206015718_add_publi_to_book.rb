class AddPubliToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publish_at, :datetime
  end
end
