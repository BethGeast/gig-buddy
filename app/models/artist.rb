class Artist < ApplicationRecord
  has_many :events
  has_many :selected_artists
  has_many :profiles, through: :selected_artists

  has_many_attached :images
end
