class SelectedArtist < ApplicationRecord
  belongs_to :profile
  belongs_to :artist

  validates :artist, uniqueness: { scope: :profile }
end
