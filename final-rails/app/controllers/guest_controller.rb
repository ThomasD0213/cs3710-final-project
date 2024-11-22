class GuestController < ApplicationController
  before_action :set_playlists 
  def index
    if user_signed_in?
      redirect_to playlists_path()
    end
  end

  private
    def set_playlists
      @playlists = Playlist.all
    end

    def playlist_params
      params.require(:playlist).permit(:title, :description)
    end
end
