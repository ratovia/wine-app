class AddDepthToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :depth, :int
  end
end
