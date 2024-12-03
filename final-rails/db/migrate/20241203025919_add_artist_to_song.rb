class AddArtistToSong < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :artist, :string
  end
end
