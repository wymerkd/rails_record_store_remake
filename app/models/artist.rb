class Artist < ApplicationRecord
  # has_and_belongs_to_many(:albums)
  has_many :album_artists
  has_many :albums, :through => :album_artists
end
