class SelectedArtist < ApplicationRecord
  belongs_to :profile
  belongs_to :artist
end
