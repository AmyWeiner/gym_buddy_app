class RemoveUsersIdFromGyms < ActiveRecord::Migration
  def change
    remove_column :gyms, :user_id, :string
  end
end
