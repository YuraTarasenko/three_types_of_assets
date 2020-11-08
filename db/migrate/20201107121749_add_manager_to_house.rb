class AddManagerToHouse < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :manager, foreign_key: true
  end
end
