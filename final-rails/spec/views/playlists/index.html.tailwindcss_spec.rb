require 'rails_helper'

RSpec.describe "playlists/index", type: :view do
  before(:each) do
    assign(:playlists, [
      Playlist.create!(
        title: "Title",
        description: "Description",
        user: nil
      ),
      Playlist.create!(
        title: "Title",
        description: "Description",
        user: nil
      )
    ])
  end

  it "renders a list of playlists" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
