class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.boolean :matched
      t.references :first_profile, foreign_key: {to_table: :profiles}
      t.references :second_profile, foreign_key: {to_table: :profiles}
      t.timestamps
    end
  end
end
