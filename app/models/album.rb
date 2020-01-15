class Album < ApplicationRecord
  has_and_belongs_to_many(:artists)
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_album)
  # remove the stuff above this?
  has_many :album_artists
  has_many :artists, :through => :album_artists
private
  def titleize_album
    self.name = self.name.titleize
  end
end
