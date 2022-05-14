require "rails_helper"

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe "relationships" do
    it {should have_many :songs}
  end

  describe "instance methods" do
    describe "#average_song_length" do
      it "returns the average song length" do
        prince = Artist.create!(name: "Prince",)
        purple = prince.songs.create!(title: "Purple Rain", length: 845, play_count: 8599)
        beret = prince.songs.create!(title: "Raspberry Beret", length: 664, play_count: 99)
        corvette = prince.songs.create!(title: "Little Red Corvette", length: 1, play_count: 99)

        expect(prince.average_song_length.round(2)).to eq(503.33)
      end
    end
  end
end
