class RemoveDeleteFromLists < ActiveRecord::Migration
  def change
  	remove_column :lists, :delete
  end
end
