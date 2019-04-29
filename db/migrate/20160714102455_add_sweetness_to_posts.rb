class AddSweetnessToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sweetness, :int
  end
end
