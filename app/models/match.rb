class Match < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :first_profile, class_name: 'Profile'
  belongs_to :second_profile, class_name: 'Profile'
  validate :unique_profiles, on: :create

  def profiles
    [first_profile, second_profile]
  end

  def unique_profiles
    if first_profile.find_match(second_profile)
      errors.add(:second_profile, "is already a match :)")
    end
  end
end
