require 'rails_helper'

RSpec.describe "the songs show page" do
  # As a visitor
  # When I visit /songs/1 (where 1 is the id of a song in my database)
  # Then I see that song's title and artist
  # And I do not see any of the other songs in my database

  it "displays the song title" do
    artist = Artist.create!(name: "Five Iron Frenzy")
    # song = Song.create(title: "Oh Canada", length: 208, play_count: 134)
    song1 = artist.songs.create!(title: "Oh Canada", length: 208, play_count: 1345)
    song2 = artist.songs.create!(title: "American Kryptonite", length: 315, play_count: 2596)
    visit "/songs/#{song1.id}"

    expect(page).to have_content(song1.title)
    expect(page).to_not have_content(song2.title)
  end

  it "displays the name of the artists for the song" do
  artist = Artist.create!(name: "Five Iron Frenzy")
  song1 = artist.songs.create!(title: "Oh Canada", length: 208, play_count: 1345)
  song2 = artist.songs.create!(title: "American Kryptonite", length: 315, play_count: 2596)
  visit "/songs/#{song1.id}"

  save_and_open_page
  expect(page).to have_content(artist.name)
  end
end
