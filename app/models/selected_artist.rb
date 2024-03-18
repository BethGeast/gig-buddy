class SelectedArtist < ApplicationRecord
  belongs_to :user
  belongs_to :artist
end
