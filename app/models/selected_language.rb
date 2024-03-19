class SelectedLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :profile
end
