class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
      remove_column :users, :email, :string, null: false, unique: true
      add_column :users, :email, :string 
  end
end
