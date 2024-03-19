class Profile < ApplicationRecord
  belongs_to :user
  has_many :selected_languages
  has_many :selected_artists
  has_many :languages, through: :selected_languages
  has_many :artists, through: :selected_artists
  has_many :first_profile_matches, class_name: "Match", foreign_key: "first_profile_id"
  has_many :second_profile_matches, class_name: "Match", foreign_key: "second_profile_id"

  def matches
    first_profile_matches + second_profile_matches
  end
end
