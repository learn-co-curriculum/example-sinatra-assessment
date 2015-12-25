class CreateGolfClubs < ActiveRecord::Migration
  def change
    create_table :golf_clubs do |t|
      t.string :name
      t.string :manufacturer
    end
  end
end
