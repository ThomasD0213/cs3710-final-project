class AddPlaylistToPlaylistSong < ActiveRecord::Migration[7.1]
  def change
    add_reference :playlist_songs, :playlist, null: false, foreign_key: true
    add_reference :playlist_songs, :song, null: false, foreign_key: true
  end
end
