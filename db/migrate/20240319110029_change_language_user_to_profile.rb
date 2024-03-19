class ChangeLanguageUserToProfile < ActiveRecord::Migration[7.1]
  def change
    remove_reference :selected_languages, :user
    add_reference :selected_languages, :profile
  end
end
