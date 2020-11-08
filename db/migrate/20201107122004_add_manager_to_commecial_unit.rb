class AddManagerToCommecialUnit < ActiveRecord::Migration[5.2]
  def change
    add_reference :commecial_units, :manager, foreign_key: true
  end
end
