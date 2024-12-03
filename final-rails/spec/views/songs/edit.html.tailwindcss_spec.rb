require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  let(:song) {
    Song.create!(
      name: "MyString",
      album: "MyString",
      length: 1
    )
  }

  before(:each) do
    assign(:song, song)
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(song), "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "input[name=?]", "song[album]"

      assert_select "input[name=?]", "song[length]"
    end
  end
end
