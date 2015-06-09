class AddUserIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :user_id, :integer
    add_index :patients, :user_id
  end
end
