require 'rails_helper'

RSpec.describe "songs index page", type: :feature do
#   As a user,
# when I visit '/songs'
# I see each song's title and play count


  it "can see all songs titles and play count" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song_1 = artist.songs.create!(title:       "I Really Like You",
                         length:      208,
                         play_count:  243810867)
    song_2 = artist.songs.create!(title:       "Call Me Maybe",
                         length:      199,
                         play_count:  1214722172)

    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
