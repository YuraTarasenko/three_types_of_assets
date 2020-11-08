class CreateCommecialUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :commecial_units do |t|
      t.string :owner
      t.string :address
      t.integer :shops
      t.integer :sqmt
      t.integer :parking
      t.float :price
      t.string :avatar

      t.timestamps
    end
  end
end
