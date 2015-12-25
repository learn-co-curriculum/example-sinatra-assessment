class AddUserIdToGolfBags < ActiveRecord::Migration
  def change
    add_column :golf_bags, :user_id, :integer
  end
end
