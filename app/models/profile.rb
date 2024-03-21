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

  def speaks_any?(these_languages, my_languages = nil)
    my_languages = self.languages if my_languages.nil?
    these_languages.intersect?(my_languages)
  end

  def listens_to_any?(these_artists, my_artists = nil)
    my_artists = self.artists if my_artists.nil?
    these_artists.intersect?(my_artists)
  end

  def can_be_matched?(their_profile, my_languages = nil, my_artists = nil)
    their_languages = their_profile.languages
    their_artists = their_profile.artists
    speaks_any?(their_languages, my_languages) && listens_to_any?(their_artists, my_artists)
  end

  def find_match(their_profile)
    match = Match.find_by(first_profile: self, second_profile: their_profile)
    match = Match.find_by(first_profile: their_profile, second_profile: self) unless match
    return match
  end
end
