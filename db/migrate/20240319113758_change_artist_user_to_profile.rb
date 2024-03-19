class ChangeArtistUserToProfile < ActiveRecord::Migration[7.1]
  def change
    remove_reference :selected_artists, :user
    add_reference :selected_artists, :profile
  end
end
