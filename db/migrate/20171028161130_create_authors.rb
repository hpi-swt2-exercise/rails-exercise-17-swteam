class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Homepage

      t.timestamps null: false
    end
  end
end
