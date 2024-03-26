class Match < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :first_profile, class_name: 'Profile'
  belongs_to :second_profile, class_name: 'Profile'

  def profiles
    [first_profile, second_profile]
  end
end
