class Match < ApplicationRecord
  has_many :messages
  belongs_to :first_profile, class_name: 'Profile'
  belongs_to :second_profile, class_name: 'Profile'
end
