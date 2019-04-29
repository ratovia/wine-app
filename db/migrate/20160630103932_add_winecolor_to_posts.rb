class AddWinecolorToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :winecolor, :string
  end
end
