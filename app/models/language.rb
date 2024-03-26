class Language < ApplicationRecord
  has_many :selected_languages, dependent: :destroy
  has_many :profiles, through: :selected_languages
end
