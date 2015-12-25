class CreateGolfBags < ActiveRecord::Migration
  def change
    create_table :golf_bags do |t|
      t.string :name
      t.integer :capacity
    end
  end
end
