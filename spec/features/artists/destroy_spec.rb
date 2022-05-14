# As a visitor
# When I visit the artists index page
# And click a button 'Delete' next to an artist
# Then I am redirected back to the artists index page
# And I no longer see that artist
require 'rails_helper'

RSpec.describe "artist destroy" do
  it "can delete an artist" do
    artist = Artist.create!(name: 'Prince')
    visit '/artists'

    expect(page).to have_content("Prince")

    click_button "Delete Prince"

    expect(current_path).to eq("/artists")
    expect(page).to_not have_content("Prince")
  end
end
