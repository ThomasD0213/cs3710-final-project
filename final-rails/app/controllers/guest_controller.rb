class GuestController < ApplicationController
  def index
    if user_signed_in?
      redirect_to playlists_path()
    end
  end
end
