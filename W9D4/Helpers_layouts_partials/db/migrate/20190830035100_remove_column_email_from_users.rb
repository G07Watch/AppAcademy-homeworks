class RemoveColumnEmailFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email, :string, null: false, unique: true
  end
end
