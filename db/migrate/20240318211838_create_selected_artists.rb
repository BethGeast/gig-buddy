class CreateSelectedArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :selected_artists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
