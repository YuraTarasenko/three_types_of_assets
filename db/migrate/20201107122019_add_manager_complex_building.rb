class AddManagerComplexBuilding < ActiveRecord::Migration[5.2]
  def change
    add_reference :complex_buildings, :manager, foreign_key: true
  end
end
