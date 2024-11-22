require 'rails_helper'

RSpec.describe "playlists/show", type: :view do
  before(:each) do
    assign(:playlist, Playlist.create!(
      title: "Title",
      description: "Description",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
