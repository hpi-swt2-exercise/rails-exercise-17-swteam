class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :homepage
      t.references :paper, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
