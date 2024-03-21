class SelectedLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :profile

  validates :language, uniqueness: { scope: :profile }
end
