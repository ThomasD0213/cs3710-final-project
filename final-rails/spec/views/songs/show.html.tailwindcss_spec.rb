require 'rails_helper'

RSpec.describe "songs/show", type: :view do
  before(:each) do
    assign(:song, Song.create!(
      name: "Name",
      album: "Album",
      length: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Album/)
    expect(rendered).to match(/2/)
  end
end
