class AddDeleteToLists < ActiveRecord::Migration
  def change
    add_column :lists, :delete, :boolean
  end
end
