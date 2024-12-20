require 'spec_helper'
require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/playlists", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Playlist. As you add validations to Playlist, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    context "without credentials" do
      it "redirects to sign_in page" do
        Playlist.create! valid_attributes
        get playlists_url
        expect(response).to have_http_status(:redirect)
        expect(response).to include("You need to sign in or sign up before continuing.")
      end
    end
  end

  describe "GET /show without credentials" do
    it "redirects to sign_in page" do
      playlist = Playlist.create! valid_attributes
      get playlist_url(playlist)
      expect(response).to include("You need to sign in or sign up before continuing.")
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_playlist_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      playlist = Playlist.create! valid_attributes
      get edit_playlist_url(playlist)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Playlist" do
        expect {
          post playlists_url, params: { playlist: valid_attributes }
        }.to change(Playlist, :count).by(1)
      end

      it "redirects to the created playlist" do
        post playlists_url, params: { playlist: valid_attributes }
        expect(response).to redirect_to(playlist_url(Playlist.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Playlist" do
        expect {
          post playlists_url, params: { playlist: invalid_attributes }
        }.to change(Playlist, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post playlists_url, params: { playlist: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested playlist" do
        playlist = Playlist.create! valid_attributes
        patch playlist_url(playlist), params: { playlist: new_attributes }
        playlist.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the playlist" do
        playlist = Playlist.create! valid_attributes
        patch playlist_url(playlist), params: { playlist: new_attributes }
        playlist.reload
        expect(response).to redirect_to(playlist_url(playlist))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        playlist = Playlist.create! valid_attributes
        patch playlist_url(playlist), params: { playlist: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested playlist" do
      playlist = Playlist.create! valid_attributes
      expect {
        delete playlist_url(playlist)
      }.to change(Playlist, :count).by(-1)
    end

    it "redirects to the playlists list" do
      playlist = Playlist.create! valid_attributes
      delete playlist_url(playlist)
      expect(response).to redirect_to(playlists_url)
    end
  end
end
