class CreateSelectedLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :selected_languages do |t|
      t.references :language, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
