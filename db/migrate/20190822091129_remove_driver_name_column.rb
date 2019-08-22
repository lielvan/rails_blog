class RemoveDriverNameColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :driver
  end
end
