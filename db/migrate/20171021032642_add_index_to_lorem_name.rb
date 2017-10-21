class AddIndexToLoremName < ActiveRecord::Migration[5.0]
  def change
  	add_index :lorem_ipsums, :name
  end
end
