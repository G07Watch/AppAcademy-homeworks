class AddPeopleIdToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :people_id, :integer, null: false
  end
end
