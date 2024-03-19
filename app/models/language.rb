class Language < ApplicationRecord
  has_many :selected_languages
  has_many :profiles, through: :selected_languages
end
