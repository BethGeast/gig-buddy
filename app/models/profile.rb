class Profile < ApplicationRecord
  attr_accessor :language

  belongs_to :user
  has_many :selected_languages
  has_many :selected_artists
  has_many :languages, through: :selected_languages
  has_many :artists, through: :selected_artists
  has_many :first_profile_matches, class_name: "Match", foreign_key: "first_profile_id"
  has_many :second_profile_matches, class_name: "Match", foreign_key: "second_profile_id"
  has_many_attached :photos

  def matches
    first_profile_matches + second_profile_matches
  end

  # def speaks_any?(these_languages)
  #   these_languages.intersect?(self.languages)
  # end

  # def listens_to_any?(these_artists)
  #   these_artists.intersect?(self.artists)
  # end

  def find_match(their_profile)
    match = Match.find_by(first_profile: self, second_profile: their_profile)
    match = Match.find_by(first_profile: their_profile, second_profile: self) unless match
    return match
  end
end
