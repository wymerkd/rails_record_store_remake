class AddGenreToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column(:albums, :genre, :string)
  end
end
