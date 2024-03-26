class Artist < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :selected_artists, dependent: :destroy
  has_many :profiles, through: :selected_artists

  has_many_attached :images, dependent: :destroy
end
