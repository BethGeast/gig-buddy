class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.date :date
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
