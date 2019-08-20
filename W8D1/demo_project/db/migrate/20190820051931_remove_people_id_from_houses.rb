class RemovePeopleIdFromHouses < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :people_id
  end
end
