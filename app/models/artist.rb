class Artist < ApplicationRecord
  has_many :songs
  validates_presence_of :name

  def average_song_length
    # Song.where(artist_id: id).average("length")
    self.songs.average(:length)
  end

  def total_song_count
    # Song.where(artist_id: id).count
    self.songs.count
  end
end
