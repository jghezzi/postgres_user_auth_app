class AddRemoveListToLists < ActiveRecord::Migration
  def change
    add_column :lists, :remove_list, :boolean
  end
end
