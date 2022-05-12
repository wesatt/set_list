require 'rails_helper'

RSpec.describe "the artists show page" do
  describe "Practice" do
    it "User story 3:" do
      # As a user
      # When I visit an Artist's show page
      # Then I see the Artist's name
      # And I see the Artist's average song length
      # And I see the Artist's total song count
      artist1 = Artist.create!(name: "Five Iron Frenzy")
      song1 = artist1.songs.create!(title: "Oh Canada", length: 200, play_count: 1345)
      song2 = artist1.songs.create!(title: "American Kryptonite", length: 300, play_count: 2596)
      artist2 = Artist.create!(name: "Led Zeppelin")
      song3 = artist2.songs.create!(title: "Over the Hills and Far Away", length: 300, play_count: 1000)
      song4 = artist2.songs.create!(title: "Black Dog", length: 400, play_count: 2000)
      visit "/artists/#{artist1.id}"

      # save_and_open_page
      expect(page).to have_content(artist1.name)
      expect(page).to have_content(artist1.average_song_length)
      expect(page).to have_content(artist1.total_song_count)
      expect(page).to_not have_content(artist2.name)
    end
  end
end
