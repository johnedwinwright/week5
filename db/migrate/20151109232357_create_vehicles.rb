class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.float :price
      t.integer :model_id
      t.string :color
      t.string :condition

      t.timestamps null: false
    end
  end
end
