class Song < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :length
  validates_presence_of :play_count
  belongs_to :artist
end
