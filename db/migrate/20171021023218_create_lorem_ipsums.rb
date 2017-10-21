class CreateLoremIpsums < ActiveRecord::Migration[5.0]
  def change
    create_table :lorem_ipsums do |t|
      t.text   :text
      t.string :name

      t.timestamps
    end
  end
end
